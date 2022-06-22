import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';

abstract class ShopifyProductSearcher {
  Future<Either<ProductFailure, KtList<PricedProduct>>> searchInShop(
      String term, Shop shop,
      {int page});
  Future<Either<ProductFailure, KtList<PricedProduct>>>
      searchInShopWithCategory(String term, Shop shop, Category category,
          {int page});
  Future<Either<ProductFailure, KtList<Product>>> search(String term,
      {int page});
}
