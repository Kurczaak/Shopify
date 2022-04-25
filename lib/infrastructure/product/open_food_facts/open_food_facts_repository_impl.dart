import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openfoodfacts/openfoodfacts.dart' as off;
import 'package:shopify_manager/domain/product/open_food_facts/i_open_food_facts_repository.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/infrastructure/core/config.dart';
import 'package:shopify_manager/infrastructure/core/network/network_info.dart';
import 'open_food_facts_product_mapper.dart';

@Injectable(as: IOpenFoodFactsRepository)
class OpenFoodFactsRepositoryImpl implements IOpenFoodFactsRepository {
  final NetworkInfo _networkInfo;

  OpenFoodFactsRepositoryImpl(this._networkInfo);
  @override
  Future<Either<ProductFailure, Product>> getProductByBarcode(
      Barcode barcode) async {
    if (!await _networkInfo.isConnected) {
      return left(const ProductFailure.noInternetConnection());
    }
    final configuration = off.ProductQueryConfiguration(barcode.getOrCrash(),
        languages: [off.OpenFoodFactsLanguage.ENGLISH]);
    try {
      final offProduct = await off.OpenFoodAPIClient.getProduct(
        configuration,
      ).timeout(timeoutDuration);
      if (offProduct.product != null) {
        return right(offProduct.product!.toDomain());
      } else {
        return left(const ProductFailure.productNotFound());
      }
    } on TimeoutException catch (_) {
      return left(const ProductFailure.timeout(timeoutDuration));
    } catch (_) {
      return left(const ProductFailure.unexpected());
    }
  }
}
