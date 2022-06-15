import 'package:algolia/algolia.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/core/config.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/product.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/product/shopify_product_searcher.dart';
import 'package:shopify_domain/shop/shop.dart';

@Injectable(as: ShopifyProductSearcher)
class AlgoliaProductSearcher implements ShopifyProductSearcher {
  AlgoliaProductSearcher({required this.algolia, required this.networkInfo});
  final Algolia algolia;
  final NetworkInfo networkInfo;
  @override
  Future<Either<ProductFailure, KtList<Product>>> search(String term,
      {int page = 0}) async {
    if (await networkInfo.isConnected) {
      AlgoliaQuery algoliaQuery = algolia.instance
          .index(algoliaProductsIndex)
          .query(term)
          .setPage(page);
      AlgoliaQuerySnapshot snapshot = await algoliaQuery.getObjects();
      final List<Product> products = [];
      final rawHits = snapshot.toMap()['hits'] as List;
      for (final hit in rawHits) {
        final product = ProductDto.fromJson(hit).toDomain();
        products.add(product);
      }
      if (products.isNotEmpty) {
        return right(KtList.from(products));
      } else {
        return left(const ProductFailure.noMoreProducts());
      }
    } else {
      return left(const ProductFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ProductFailure, KtList<PricedProduct>>> searchInShop(
    String term,
    Shop shop, {
    int page = 0,
  }) async {
    if (await networkInfo.isConnected) {
      AlgoliaQuery algoliaQuery = algolia.instance
          .index(algoliaPricedProductsIndex)
          .query(term)
          .filters('shopId:${shop.id.getOrCrash()}')
          .setPage(page);
      AlgoliaQuerySnapshot snapshot = await algoliaQuery.getObjects();
      final List<PricedProduct> products = [];
      final rawHits = snapshot.toMap()['hits'] as List;
      for (final hit in rawHits) {
        final product = PricedProductDto.fromJson(hit).toDomain();
        products.add(product);
      }
      if (products.isNotEmpty) {
        return right(KtList.from(products));
      } else {
        return left(const ProductFailure.noMoreProducts());
      }
    } else {
      return left(const ProductFailure.noInternetConnection());
    }
  }
}
