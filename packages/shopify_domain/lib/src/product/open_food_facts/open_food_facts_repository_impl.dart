import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openfoodfacts/openfoodfacts.dart' as off;
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/src/core/network/network_info.dart';
import 'package:shopify_domain/src/core/config.dart';
import 'package:shopify_domain/src/product/open_food_facts/open_food_facts_product_mapper.dart';

@Injectable(as: OpenFoodFactsRepository)
class OpenFoodFactsRepositoryImpl implements OpenFoodFactsRepository {
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
