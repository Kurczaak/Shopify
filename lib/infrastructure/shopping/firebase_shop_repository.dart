import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
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

  FirebaseShopRepositoryImpl(this._firestore, this._storage);

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchNearby(int radius) {
    // TODO: implement watchNearby
    throw UnimplementedError();
  }
}
