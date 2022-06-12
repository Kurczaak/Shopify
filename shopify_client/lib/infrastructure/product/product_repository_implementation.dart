import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/product/i_product_repository.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop/shop.dart';

@LazySingleton(as: IProductRepository)
class ProductRepositoryImpl implements IProductRepository {
  final ShopifyProductRepository productRepository;
  ProductRepositoryImpl(this.productRepository);

  @override
  Stream<Either<ProductFailure, KtList<ProductSnippet>>> watchAllFromShop(
      Shop shop) {
    return productRepository.watchAllFromShop(shop);
  }

  @override
  Stream<Either<ProductFailure, KtList<AddedProduct>>>
      watchAllFromShopByCategory(Shop shop, Category category) {
    // TODO: implement watchAllFromShopByCategory
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<AddedProduct>>> watchAllNearby(
      Location location, double radius) {
    // TODO: implement watchAllNearby
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<AddedProduct>>> watchAllNearbyByCategory(
      double radius, Category category) {
    // TODO: implement watchAllNearbyByCategory
    throw UnimplementedError();
  }
}
