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
  Future<Either<ProductFailure, KtList<Product>>> searchForProducts(String term,
      {int page = 0});
  // Shop searching
  Stream<Either<ProductFailure, KtList<PricedProduct>>> watchAllFromShop(
      Shop shop);
  Stream<Either<ProductFailure, KtList<PricedProduct>>>
      watchAllFromShopByCategory(Shop shop, Category category);
  Future<Either<ProductFailure, KtList<PricedProduct>>> searchInShop(
      Shop shop, String term,
      {int page = 0});

  Future<Either<ProductFailure, KtList<PricedProduct>>>
      searchInShopWithCategory(Shop shop, String term, Category category,
          {int page = 0});
}
