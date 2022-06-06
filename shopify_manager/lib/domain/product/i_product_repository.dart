import 'package:dartz/dartz.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';

abstract class IProductRepository {
// watch Products
  // watch nearby Products
  // CUD

  Future<Either<ProductFailure, Product>> getByBarcode(Barcode barcode);
  Future<Either<ProductFailure, Product>> getFromShopByBarcode(
      Shop shop, Barcode barcode);
  Future<Either<ProductFailure, Unit>> create(ProductForm productForm);
  Future<Either<ProductFailure, Unit>> addToShop(
      ProductForm productForm, Shop shop, Price price);
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> delete(Product product);
}
