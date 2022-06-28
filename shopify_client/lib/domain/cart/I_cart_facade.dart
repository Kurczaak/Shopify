import 'package:dartz/dartz.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/product_snippets.dart';

abstract class ICartFacade {
  Future<Either<CartFailure, Unit>> addProductToCart(PricedProduct product,
      {int quantity = 1});
  Future<Either<CartFailure, Unit>> addProductToFavourites(UniqueId id);
}
