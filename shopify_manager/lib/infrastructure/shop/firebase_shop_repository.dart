import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/shop/shop_failure.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_domain/shop/shopify_shop_repository.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';

@LazySingleton(as: IShopRepository)
class FirebaseShopRepositoryImpl implements IShopRepository {
  final ShopifyShopRepository _shopRepository;

  FirebaseShopRepositoryImpl(this._shopRepository);

  @override
  Future<Either<ShopFailure, Unit>> create(
      Shop shop, ShopLogo logo, ShopifyUser user) {
    return _shopRepository.create(shop, logo, user);
  }

  @override
  Future<Either<ShopFailure, Unit>> delete(Shop shop) {
    return _shopRepository.delete(shop);
  }

  @override
  Future<Either<ShopFailure, Unit>> update(Shop shop) {
    return _shopRepository.update(shop);
  }

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchAll() {
    return _shopRepository.watchAll();
  }

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchNearby() {
    // TODO: implement watchNearby
    throw UnimplementedError();
  }

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchYourShops() {
    return _shopRepository.watchYours();
  }
}
