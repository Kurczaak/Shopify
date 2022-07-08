import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/cart/shopify_cart_facade.dart';
import 'package:shopify_domain/product/product_snippets.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/cart/cart_failure.dart';

@LazySingleton(as: ICartFacade)
class CartFacadeImpl implements ICartFacade {
  final ShopifyCartFacade cartFacade;

  CartFacadeImpl(this.cartFacade);
  @override
  Future<Either<CartFailure, Unit>> addProductToCart(PricedProduct product,
      {int quantity = 1}) {
    final cartItem = CartItem(
        id: UniqueId(), product: product, quantity: NonnegativeInt(quantity));
    return cartFacade.addItemToCart(cartItem);
  }

  @override
  Future<Either<CartFailure, Unit>> addProductToFavourites(UniqueId id) {
    // TODO: implement addProductToFavourites
    throw UnimplementedError();
  }

  @override
  Future<Either<CartFailure, Unit>> decrementCartItem(CartItem cartItem) {
    return cartFacade.decrementItemQuantity(cartItem);
  }

  @override
  Future<Either<CartFailure, Unit>> deleteCart(Cart cart) {
    return cartFacade.removeCart(cart);
  }

  @override
  Future<Either<CartFailure, Unit>> deleteCartItem(CartItem cartItem) {
    return cartFacade.removeItemFromCart(cartItem);
  }

  @override
  Future<Either<CartFailure, Unit>> incrementCartItem(CartItem cartItem) {
    return cartFacade.incrementItemQuantity(cartItem);
  }

  @override
  Future<Either<CartFailure, Unit>> sendOrder(Cart cart) {
    return cartFacade.createOrder(cart);
  }

  @override
  Stream<Either<CartFailure, UserCarts>> getUserCarts() {
    return cartFacade.getUserCarts();
  }
}
