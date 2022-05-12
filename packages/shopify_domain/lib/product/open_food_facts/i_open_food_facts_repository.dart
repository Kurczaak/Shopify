import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';

abstract class IOpenFoodFactsRepository {
  Future<Either<ProductFailure, Product>> getProductByBarcode(Barcode barcode);
}
