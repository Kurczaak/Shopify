import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/favourites/favourite_failure.dart';
import 'package:shopify_domain/favourites/favourite_product.dart';

abstract class IFavouritesFacade {
  Future<Either<FavouriteFailure, Unit>> addToFavourites(UniqueId productId);
  Future<Either<FavouriteFailure, Unit>> removeFromFavourites(
      UniqueId productId);

  Future<Either<FavouriteFailure, bool>> isFavourite(UniqueId productId);
  Stream<Either<FavouriteFailure, KtList<FavouriteProduct>>> watchFavourites();
}
