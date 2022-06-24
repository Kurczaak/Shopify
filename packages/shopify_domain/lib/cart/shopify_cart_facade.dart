import 'package:dartz/dartz.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/cart/cart_item.dart';

abstract class ShopifyCartFacade {
  // Create
  Future<Either<CartFailure, Unit>> addItemToCart(CartItem item);
  // Read
  Stream<Either<CartFailure, UserCarts>> getUserCarts();
  // Update
  Future<Either<CartFailure, Unit>> updateItemInCart(CartItem item);
  // Delete
  Future<Either<CartFailure, Unit>> removeItemFromCart(CartItem item);
}
