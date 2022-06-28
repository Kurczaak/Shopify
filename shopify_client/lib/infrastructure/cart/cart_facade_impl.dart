import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
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
    final cartItem =
        CartItem(product: product, quantity: NonnegativeInt(quantity));
    return cartFacade.addItemToCart(cartItem);
  }

  @override
  Future<Either<CartFailure, Unit>> addProductToFavourites(UniqueId id) {
    // TODO: implement addProductToFavourites
    throw UnimplementedError();
  }
}
