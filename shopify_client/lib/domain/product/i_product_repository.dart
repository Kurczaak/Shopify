import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop/shop.dart';

abstract class IProductRepository {
  Stream<Either<ProductFailure, KtList<PricedProduct>>> watchAllNearby(
      Location location, double radius);
  Stream<Either<ProductFailure, KtList<PricedProduct>>>
      watchAllNearbyByCategory(double radius, Category category);
  Stream<Either<ProductFailure, KtList<ProductSnippet>>> watchAllFromShop(
      Shop shop);
  Stream<Either<ProductFailure, KtList<PricedProduct>>>
      watchAllFromShopByCategory(Shop shop, Category category);
}
