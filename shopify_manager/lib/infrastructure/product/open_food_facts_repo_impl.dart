import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/domain/product/i_open_food_facts_repository.dart';

@Injectable(as: IOpenFoodFactsRepository)
class OpenFoodFactsRepositoryImpl implements IOpenFoodFactsRepository {
  final OpenFoodFactsRepository _offRepo;

  OpenFoodFactsRepositoryImpl(this._offRepo);
  @override
  Future<Either<ProductFailure, Product>> getProductByBarcode(Barcode barcode) {
    return _offRepo.getProductByBarcode(barcode);
  }
}
