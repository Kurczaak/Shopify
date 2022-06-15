import 'package:shopify_domain/product/product_snippets.dart';
import 'package:shopify_domain/product/product_failure.dart';
import 'package:shopify_domain/product/product.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/product/shopify_product_searcher.dart';
import 'package:shopify_domain/shop/shop.dart';

class AlgoliaProductSearcher implements ShopifyProductSearcher {
  @override
  Future<Either<ProductFailure, KtList<Product>>> search(String term,
      {int page = 0}) {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, KtList<PricedProduct>>> searchInShop(
    String term,
    Shop shop, {
    int page = 0,
  }) {
    // TODO: implement searchInShop
    throw UnimplementedError();
  }
}
