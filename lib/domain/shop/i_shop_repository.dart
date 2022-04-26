import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/auth/user.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/shop/shop.dart';

import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/shop/shop_failure.dart';

abstract class IShopRepository {
  // watch Shops
  // watch nearby shops
  // CUD
  Stream<Either<ShopFailure, KtList<Shop>>> watchAll();
  Stream<Either<ShopFailure, KtList<Shop>>> watchNearby();
  Future<Either<ShopFailure, Unit>> create(
      Shop shop, ShopLogo logo, ShopifyUser user);
  Future<Either<ShopFailure, Unit>> update(Shop shop);
  Future<Either<ShopFailure, Unit>> delete(Shop shop);
}
