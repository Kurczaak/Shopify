import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/shopping/shop.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_client/domain/shopping/shop_failure.dart';

abstract class IShopRepository {
  Stream<Either<ShopFailure, KtList<Shop>>> watchAll();
  Stream<Either<ShopFailure, KtList<Shop>>> watchNearby(int radius);
}
