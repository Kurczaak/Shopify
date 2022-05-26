import 'package:dartz/dartz.dart';
import 'package:shopify_domain/auth.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop.dart';
import 'package:kt_dart/kt.dart';

abstract class IShopRepository {
  // watch Shops
  // watch nearby shops
  // CUD
  Stream<Either<ShopFailure, KtList<Shop>>> watchAll();
  Stream<Either<ShopFailure, KtList<Shop>>> watchNearby();
  Stream<Either<ShopFailure, KtList<Shop>>> watchYourShops();
  Future<Either<ShopFailure, Unit>> create(
      Shop shop, ShopLogo logo, ShopifyUser user);

  Future<Either<ShopFailure, Unit>> update(Shop shop);
  Future<Either<ShopFailure, Unit>> delete(Shop shop);
}
