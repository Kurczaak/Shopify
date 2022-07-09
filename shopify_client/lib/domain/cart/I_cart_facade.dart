import 'package:dartz/dartz.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/product_snippets.dart';

abstract class ICartFacade {
  Stream<Either<CartFailure, UserCarts>> getUserCarts();

  Future<Either<CartFailure, Unit>> addProductToCart(PricedProduct product,
      {int quantity = 1});

  Future<Either<CartFailure, Unit>> incrementCartItem(CartItem cartItem);
  Future<Either<CartFailure, Unit>> decrementCartItem(CartItem cartItem);
  Future<Either<CartFailure, Unit>> deleteCartItem(CartItem cartItem);
  Future<Either<CartFailure, Unit>> deleteCart(Cart cart);
  Future<Either<CartFailure, Unit>> sendOrder(Cart cart);
  Future<Either<CartFailure, Unit>> addProductToFavourites(UniqueId id);
}
