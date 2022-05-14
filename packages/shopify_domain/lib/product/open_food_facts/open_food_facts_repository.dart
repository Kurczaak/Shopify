import 'package:dartz/dartz.dart';
import 'package:shopify_domain/injection.dart';
import 'package:shopify_domain/product/product.dart';
import 'package:shopify_domain/product/product_failure.dart';
import 'package:shopify_domain/product/value_objects.dart';

abstract class OpenFoodFactsRepository {
  Future<Either<ProductFailure, Product>> getProductByBarcode(Barcode barcode);
  static OpenFoodFactsRepository get instance =>
      getIt<OpenFoodFactsRepository>();
}
