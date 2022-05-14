import 'package:dartz/dartz.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/injection.dart';
import 'package:shopify_domain/shop/shop.dart';

import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/shop/shop_failure.dart';

abstract class ShopifyShopRepository {
  // watch Shops
  // watch nearby shops
  // CUD
  Stream<Either<ShopFailure, KtList<Shop>>> watchAll();
  Stream<Either<ShopFailure, KtList<Shop>>> watchNearby(
      Location location, double radius);
  Stream<Either<ShopFailure, KtList<Shop>>> watchYourShops();
  Future<Either<ShopFailure, Unit>> create(
      Shop shop, ShopLogo logo, ShopifyUser user);

  Future<Either<ShopFailure, Unit>> update(Shop shop);
  Future<Either<ShopFailure, Unit>> delete(Shop shop);
  static ShopifyShopRepository get instance => getIt<ShopifyShopRepository>();
}
