import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/auth.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:shopify_domain/src/core/firestore_helpers.dart';
import 'package:shopify_domain/src/shop/shop_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase_storage/firebase_storage.dart';

@LazySingleton(as: ShopifyShopRepository)
class FirebaseShopRepositoryImpl implements ShopifyShopRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final Geoflutterfire _geo;

  FirebaseShopRepositoryImpl(this._firestore, this._storage, this._geo);

  Future<void> _deleteFileAndDocument(
      {Reference? fileReference, DocumentReference? docReference}) async {
    if (fileReference != null) {
      try {
        await fileReference.delete();
      } catch (_) {}
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
  Stream<Either<ShopFailure, KtList<Shop>>> watchNearby(
      Location location, double radius) async* {
    final shopsCollectionRef = _firestore.collection('shops');
    const String field = 'position';
    final GeoFirePoint center =
        _geo.point(latitude: location.latitude, longitude: location.longitude);
    final collection = _geo.collection(collectionRef: shopsCollectionRef);
    Stream<List<DocumentSnapshot>> stream = collection.within(
        center: center, radius: radius, field: field, strictMode: true);

    yield* stream.map(
      (documents) {
        return right<ShopFailure, KtList<Shop>>(
          documents
              .map(
                (snapshot) => ShopDto.fromFirestore(snapshot).toDomain(),
              )
              .toImmutableList(),
        );
      },
    ).onErrorReturnWith((error, stackTrace) {
      if (error is FirebaseException) {
        if (error.code.contains('permission-denied')) {
          return left(const ShopFailure.insufficientPermission());
        }
      }

      return left(const ShopFailure.unexpected());
    });
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
