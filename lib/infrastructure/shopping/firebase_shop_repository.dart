import 'dart:async';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/core/location.dart';
import 'package:shopify_client/domain/shopping/i_shop_repository.dart';
import 'package:shopify_client/domain/shopping/shop_failure.dart';
import 'package:shopify_client/domain/shopping/shop.dart';
import 'package:shopify_client/infrastructure/core/config.dart';
import 'package:shopify_client/infrastructure/core/firestore_helpers.dart';
import 'package:shopify_client/infrastructure/shopping/shop_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase_storage/firebase_storage.dart';

@LazySingleton(as: IShopRepository)
class FirebaseShopRepositoryImpl implements IShopRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final Geoflutterfire _geo;

  FirebaseShopRepositoryImpl(this._firestore, this._storage, this._geo);

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchNearby(
      Location location, double radius) async* {
    final shopsCollectionRef = _firestore.collection('shops');

    const String field = 'position';
    final GeoFirePoint center =
        _geo.point(latitude: location.latitude, longitude: location.longitude);
    final collection = _geo.collection(collectionRef: shopsCollectionRef);
    Stream<List<DocumentSnapshot>> stream =
        collection.within(center: center, radius: radius, field: field);

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
      return left(ShopFailure.unexpected());
    });

    //throw UnimplementedError();
  }
}
