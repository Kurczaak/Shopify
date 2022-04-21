import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/product/open_food_facts/i_open_food_facts_repository.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';
import 'package:shopify_manager/domain/product/product.dart';

class OpenFoodFactsRepositoryImpl implements IOpenFoodFactsRepository {
  @override
  Future<Either<ProductFailure, Product>> getProductByBarcode(Barcode barcode) {
    // TODO: implement getProductByBarcode
    throw UnimplementedError();
  }
}
