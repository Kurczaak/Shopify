import 'package:dartz/dartz.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/cart/cart_item.dart';

abstract class ShopifyCartFacade {
  // Create
  Future<Either<CartFailure, Unit>> addItemToCart(CartItem item);
  Future<Either<CartFailure, Unit>> createOrder(Cart cart);
  // Read
  Stream<Either<CartFailure, UserCarts>> getUserCarts();
  // Update
  Future<Either<CartFailure, Unit>> updateItemInCart(CartItem item);
  Future<Either<CartFailure, Unit>> incrementItemQuantity(CartItem item);
  Future<Either<CartFailure, Unit>> decrementItemQuantity(CartItem item);
  // Delete
  Future<Either<CartFailure, Unit>> removeItemFromCart(CartItem item);
  Future<Either<CartFailure, Unit>> removeCart(Cart cart);
}
