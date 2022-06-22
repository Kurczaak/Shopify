import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/product/i_product_repository.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/product/shopify_product_searcher.dart';
import 'package:shopify_domain/shop/shop.dart';

@LazySingleton(as: IProductRepository)
class ProductRepositoryImpl implements IProductRepository {
  final ShopifyProductRepository productRepository;
  final ShopifyProductSearcher productSearcher;
  ProductRepositoryImpl(
      {required this.productRepository, required this.productSearcher});

  @override
  Stream<Either<ProductFailure, KtList<PricedProduct>>> watchAllFromShop(
      Shop shop) {
    return productRepository.watchAllFromShop(shop);
  }

  @override
  Stream<Either<ProductFailure, KtList<PricedProduct>>>
      watchAllFromShopByCategory(Shop shop, Category category) {
    return productRepository.watchAllFromShopByCategory(shop, category);
  }

  @override
  Future<Either<ProductFailure, KtList<PricedProduct>>> searchInShop(
      Shop shop, String term,
      {int page = 0}) {
    return productSearcher.searchInShop(term, shop, page: page);
  }

  @override
  Future<Either<ProductFailure, KtList<Product>>> searchForProducts(String term,
      {int page = 0}) async {
    return productSearcher.search(term, page: page);
  }

  @override
  Stream<Either<ProductFailure, KtList<PricedProduct>>> watchAllNearby(
      Location location, double radius) {
    // TODO: implement watchAllNearby
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<PricedProduct>>>
      watchAllNearbyByCategory(double radius, Category category) {
    // TODO: implement watchAllNearbyByCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, KtList<PricedProduct>>>
      searchInShopWithCategory(Shop shop, String term, Category category,
          {int page = 0}) {
    return productSearcher.searchInShopWithCategory(term, shop, category,
        page: page);
  }
}
