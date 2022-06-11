import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop/shop.dart';

abstract class IProductRepository {
  Stream<Either<ProductFailure, KtList<Product>>> watchAllNearby(double radius);
  Stream<Either<ProductFailure, KtList<Product>>> watchAllNearbyByCategory(
      double radius, Category category);
  Stream<Either<ProductFailure, KtList<Product>>> watchAllFromShop(Shop shop);
  Stream<Either<ProductFailure, KtList<Product>>> watchAllFromShopByCategory(
      Shop shop, Category category);
}
