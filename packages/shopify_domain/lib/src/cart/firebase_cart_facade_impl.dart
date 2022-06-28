import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/cart/shopify_cart_facade.dart';
import 'package:shopify_domain/core/config.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:cloud_functions/cloud_functions.dart';

@Injectable(as: ShopifyCartFacade)
class FirebaseCartFacadeImpl implements ShopifyCartFacade {
  final FirebaseFirestore firebase;
  final NetworkInfo networkInfo;
  FirebaseCartFacadeImpl({required this.firebase, required this.networkInfo});
  @override
  Future<Either<CartFailure, Unit>> addItemToCart(CartItem item) async {
    final callable = FirebaseFunctions.instance.httpsCallable(
      'addItemToCart-addToCart',
      options: HttpsCallableOptions(timeout: timeoutDuration),
    );

    try {
      await callable.call({
        "pricedProductId": item.product.pricedProductId.getOrCrash(),
        "quantity": item.quantity.getOrCrash(),
        "shopId": item.product.shopId.getOrCrash()
      });

      return right(unit);
    } on FirebaseFunctionsException {
      return left(const CartFailure.unexpected());
    } on TimeoutException {
      return left(const CartFailure.noInternetConnection());
    }
  }

  @override
  Stream<Either<CartFailure, UserCarts>> getUserCarts() {
    // TODO: implement getUserCarts

    throw UnimplementedError();
  }

  @override
  Future<Either<CartFailure, Unit>> removeItemFromCart(CartItem item) {
    // TODO: implement removeItemFromCart
    throw UnimplementedError();
  }

  @override
  Future<Either<CartFailure, Unit>> updateItemInCart(CartItem item) {
    // TODO: implement updateItemInCart
    throw UnimplementedError();
  }
}
