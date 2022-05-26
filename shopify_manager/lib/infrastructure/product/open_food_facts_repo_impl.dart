import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/domain/product/i_open_food_facts_repository.dart';
import 'package:shopify_manager/infrastructure/core/network/network_info.dart';

@Injectable(as: IOpenFoodFactsRepository)
class OpenFoodFactsRepositoryImpl implements IOpenFoodFactsRepository {
  final NetworkInfo _networkInfo;

  OpenFoodFactsRepositoryImpl(this._networkInfo);
  @override
  Future<Either<ProductFailure, Product>> getProductByBarcode(Barcode barcode) {
    throw UnimplementedError();
  }
}