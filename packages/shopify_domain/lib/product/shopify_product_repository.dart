import 'package:dartz/dartz.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/src/injection.dart';
import 'package:shopify_domain/shop/shop.dart';

abstract class ShopifyProductRepository {
// watch Products
  // watch nearby Products
  // CUD

  Future<Either<ProductFailure, Product>> getByBarcode(Barcode barcode);
  Future<Either<ProductFailure, Product>> getFromShopByBarcode(
      Shop shop, Barcode barcode);
  Future<Either<ProductFailure, Unit>> create(
      Product product, NonEmptyList5<ProductPhoto> photos);
  Future<Either<ProductFailure, Unit>> addToShop(
      Product product, Price price, Shop shop);
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> delete(Product product);

  static ShopifyProductRepository get instance =>
      getIt<ShopifyProductRepository>();
}
