import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/shop/shop_failure.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';
import 'package:firebase_storage/firebase_storage.dart';

@LazySingleton(as: IShopRepository)
class FirebaseShopRepositoryImpl implements IShopRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  FirebaseShopRepositoryImpl(this._firestore, this._storage);

  @override
  Future<Either<ShopFailure, Unit>> create(
      Shop shop, ShopLogo logo, ShopifyUser user) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<ShopFailure, Unit>> delete(Shop shop) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ShopFailure, Unit>> update(Shop shop) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchNearby() {
    // TODO: implement watchNearby
    throw UnimplementedError();
  }

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchYourShops() {
    // TODO: implement watchYourShops
    throw UnimplementedError();
  }
}
