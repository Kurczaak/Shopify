import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';

abstract class IProductRepository {
// watch Products
  // watch nearby Products
  // CUD
  Stream<Either<ProductFailure, KtList<Product>>> watchAll();
  Stream<Either<ProductFailure, KtList<Product>>> watchNearby();
  Future<Either<ProductFailure, Unit>> create(
      Product product, NonEmptyList5<ProductPhoto> logo);
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> delete(Product product);
}
