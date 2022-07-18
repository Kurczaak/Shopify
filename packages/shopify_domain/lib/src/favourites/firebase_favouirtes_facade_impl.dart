import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/auth/shopify_auth.dart';
import 'package:shopify_domain/core/config.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/favourites/favourite_product.dart';
import 'package:shopify_domain/favourites/favourite_failure.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/favourites/shopify_favourites_facade.dart';
import 'package:shopify_domain/src/core/firestore_helpers.dart';
import 'package:shopify_domain/src/favourites/favourite_product_dtos.dart';

@Injectable(as: IShopifyFavouritesFacade)
class FirebaseFavouritesFacadeImpl implements IShopifyFavouritesFacade {
  final NetworkInfo networkInfo;
  final FirebaseFirestore firebase;
  final FirebaseFunctions firebaseFunctions;
  final ShopifyAuth auth;
  FirebaseFavouritesFacadeImpl({
    required this.networkInfo,
    required this.firebase,
    required this.firebaseFunctions,
    required this.auth,
  });

  @override
  Future<Either<FavouriteFailure, Unit>> addToFavourites(
      UniqueId productId) async {
    if (await networkInfo.isConnected) {
      try {
        final callable = firebaseFunctions.httpsCallable(
          'favourites-addToFavourites',
        );
        await callable.call({'productId': productId.getOrCrash()}).timeout(
            timeoutDuration);
        return right(unit);
      } on FirebaseFunctionsException catch (e) {
        if (e.code.contains('not-found')) {
          return left(const FavouriteFailure.alreadyInFavoruites());
        }
        print(e);
        return left(const FavouriteFailure.unexpected());
      } on TimeoutException {
        return left(const FavouriteFailure.timeout());
      }
    } else {
      return const Left(FavouriteFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<FavouriteFailure, Unit>> removeFromFavourites(
      UniqueId productId) async {
    if (await networkInfo.isConnected) {
      try {
        final callable = firebaseFunctions.httpsCallable(
          'favourites-removeFromFavourites',
        );
        await callable.call({'productId': productId.getOrCrash()}).timeout(
            timeoutDuration);
        return right(unit);
      } on FirebaseFunctionsException catch (e) {
        if (e.code.contains('not-found')) {
          return left(const FavouriteFailure.notInFavourites());
        }
        return left(const FavouriteFailure.unexpected());
      } on TimeoutException {
        return left(const FavouriteFailure.timeout());
      }
    } else {
      return const Left(FavouriteFailure.noInternetConnection());
    }
  }

  @override
  Stream<Either<FavouriteFailure, KtList<FavouriteProduct>>>
      watchFavourites() async* {
    if (await networkInfo.isConnected) {
      final userOption = await auth.getSignedInUser();
      final user = userOption.getOrElse(() {
        throw UnimplementedError('User not signed in');
      });
      final query = firebase.favouritesCollection
          .where('userId', isEqualTo: user.id.getOrCrash());
      yield* query
          .snapshots()
          .asyncMap<Either<FavouriteFailure, KtList<FavouriteProduct>>>(
              (snapshot) {
        final favouritesList = snapshot.docs
            .map((doc) => FavouriteProductDto.fromFirestore(doc).toDomain())
            .toList();
        return right(KtList.from(favouritesList));
      });
    } else {
      yield const Left(FavouriteFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<FavouriteFailure, bool>> isFavourite(UniqueId productId) async {
    if (await networkInfo.isConnected) {
      final query = firebase.favouritesCollection
          .where('productId', isEqualTo: productId.getOrCrash());

      final snapshot = await query.get();
      if (snapshot.docs.isEmpty) {
        return right(false);
      } else if (snapshot.docs.length == 1) {
        return right(true);
      } else {
        return left(const FavouriteFailure.unexpected());
      }
    } else {
      return left(const FavouriteFailure.noInternetConnection());
    }
  }
}
