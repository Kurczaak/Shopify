import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/product/i_product_repository.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:shopify_domain/product/value_objects.dart';
import 'package:shopify_domain/product/product_failure.dart';
import 'package:shopify_domain/product/product.dart';

class ProductRepositoryImpl implements IProductRepository {
  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchAllFromShop(Shop shop) {
    // TODO: implement watchAllFromShop
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchAllFromShopByCategory(
      Shop shop, Category category) {
    // TODO: implement watchAllFromShopByCategory
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchAllNearby(
      double radius) {
    // TODO: implement watchAllNearby
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchAllNearbyByCategory(
      double radius, Category category) {
    // TODO: implement watchAllNearbyByCategory
    throw UnimplementedError();
  }
}
