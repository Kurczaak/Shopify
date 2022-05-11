import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/auth/user.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';
import 'package:shopify_manager/domain/shop/shop_failure.dart';
import 'package:shopify_manager/domain/shop/shop.dart';
import 'package:shopify_manager/infrastructure/core/config.dart';
import 'package:shopify_manager/infrastructure/core/firestore_helpers.dart';
import 'package:shopify_manager/infrastructure/shop/shop_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase_storage/firebase_storage.dart';

@LazySingleton(as: IShopRepository)
class FirebaseShopRepositoryImpl implements IShopRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  FirebaseShopRepositoryImpl(this._firestore, this._storage);

  Future<void> _deleteFileAndDocument(
      {Reference? fileReference, DocumentReference? docReference}) async {
    if (fileReference != null) {
      await fileReference.delete();
    }
    if (docReference != null) {
      try {
        await docReference.delete();
      } catch (_) {}
    }
  }

  @override
  Future<Either<ShopFailure, Unit>> create(
      Shop shop, ShopLogo logo, ShopifyUser user) async {
    Reference? uploadedLogoReference;
    DocumentReference? shopReference;

    try {
      final taskSnapshot = await _storage.shopLogosReference
          .child(shop.id.getOrCrash())
          .putFile(logo.getOrCrash())
          .timeout(timeoutDuration, onTimeout: () {
        throw TimeoutException('Connection timeout ', timeoutDuration);
      });
      uploadedLogoReference = taskSnapshot.ref;
      final uploadUrl = await uploadedLogoReference.getDownloadURL();
      final shopWithUpdatedLogo = shop.copyWith(logoUrl: ShopifyUrl(uploadUrl));
      final shopsCollection = _firestore.shopsCollection;
      shopReference = shopsCollection.doc(shop.id.getOrCrash());
      await shopReference
          .set(ShopDto.fromDomain(shopWithUpdatedLogo).toJson())
          .timeout(timeoutDuration);
      final userShopsCollection = await _firestore.userShops();
      userShopsCollection
          .doc(shop.id.getOrCrash())
          .set(ShopDto.fromDomain(shopWithUpdatedLogo).toJson())
          .timeout(timeoutDuration);
      return right(unit);
    } on FirebaseException catch (e) {
      await _deleteFileAndDocument(
          fileReference: uploadedLogoReference, docReference: shopReference);
      if (e.code.contains('permission-denied')) {
        return left(const ShopFailure.insufficientPermission());
      } else {
        return left(const ShopFailure.unexpected());
      }
    } on TimeoutException catch (_) {
      await _deleteFileAndDocument(
          fileReference: uploadedLogoReference, docReference: shopReference);
      return left(const ShopFailure.timeout(timeoutDuration));
    }
  }

  @override
  Future<Either<ShopFailure, Unit>> delete(Shop shop) async {
    try {
      final userDoc = await _firestore.userDocument();
      final shopId = shop.id.getOrCrash();

      await userDoc.shopCollection.doc(shopId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      //TODO log this error

      // log.error(e.toString());

      if (e.code.contains('permission-denied')) {
        return left(const ShopFailure.insufficientPermission());
      } else if (e.code.contains('not-found')) {
        return left(const ShopFailure.unableToUpdate());
      } else {
        //TODO log this error
        // log.error(e.toString());
        return left(const ShopFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ShopFailure, Unit>> update(Shop shop) async {
    try {
      final userDoc = await _firestore.userDocument();
      final shopDto = ShopDto.fromDomain(shop);

      await userDoc.shopCollection.doc(shopDto.id).update(shopDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      //TODO log this error

      // log.error(e.toString());

      if (e.code.contains('permission-denied')) {
        return left(const ShopFailure.insufficientPermission());
      } else if (e.code.contains('not-found')) {
        return left(const ShopFailure.unableToUpdate());
      } else {
        //TODO log this error
        // log.error(e.toString());
        return left(const ShopFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.shopCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<ShopFailure, KtList<Shop>>(
            snapshot.docs
                .map((doc) => ShopDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ShopFailure.insufficientPermission());
      } else {
        //TODO log this error
        // log.error(e.toString());
        return left(const ShopFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchNearby() {
    // TODO: implement watchNearby
    throw UnimplementedError();
  }

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchYourShops() async* {
    final shops = await _firestore.userShops();
    yield* shops
        .snapshots()
        .map(
          (snapshot) => right<ShopFailure, KtList<Shop>>(
            snapshot.docs
                .map((doc) => ShopDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ShopFailure.insufficientPermission());
      } else {
        //TODO log this error
        // log.error(e.toString());
        return left(const ShopFailure.unexpected());
      }
    });
  }
}
