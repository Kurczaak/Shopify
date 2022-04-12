import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';
import 'package:shopify_manager/domain/product/product_form.dart';
import 'package:shopify_manager/domain/shop/shop.dart';

abstract class IProductRepository {
// watch Products
  // watch nearby Products
  // CUD
  Stream<Either<ProductFailure, KtList<Product>>> watchAll();
  Stream<Either<ProductFailure, KtList<Product>>> watchNearby();
  Future<Either<ProductFailure, Unit>> create(ProductForm productForm);
  Future<Either<ProductFailure, Unit>> createForShop(
      ProductForm productForm, Shop shop);
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> delete(Product product);
}
