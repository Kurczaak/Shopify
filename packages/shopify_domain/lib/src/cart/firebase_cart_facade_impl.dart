import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/auth/shopify_auth.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/cart/shopify_cart_facade.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/src/cart/cart_dtos.dart';
import 'package:shopify_domain/src/core/firestore_helpers.dart';

@Injectable(as: ShopifyCartFacade)
class FirebaseCartFacadeImpl implements ShopifyCartFacade {
  final FirebaseFirestore firebase;
  final NetworkInfo networkInfo;
  final ShopifyAuth auth;

  FirebaseCartFacadeImpl(
      {required this.firebase, required this.networkInfo, required this.auth});
  @override
  Future<Either<CartFailure, Unit>> addItemToCart(CartItem item) async {
    final callable = FirebaseFunctions.instance.httpsCallable(
      'addItemToCart-addToCart',
      options: HttpsCallableOptions(timeout: const Duration(seconds: 10)),
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
  Stream<Either<CartFailure, UserCarts>> getUserCarts() async* {
    if (await networkInfo.isConnected) {
      final userOption = await auth.getSignedInUser();
      final uid = userOption
          .getOrElse(() => throw UnimplementedError('User is not signed in'));
      final userCartsQuery = firebase.cartsCollection
          .where('userId', isEqualTo: uid.id.getOrCrash());
      try {
        // Map all the user carts
        yield* userCartsQuery
            .snapshots()
            .asyncMap<Either<CartFailure, UserCarts>>((cartsSnapshot) async {
          if (cartsSnapshot.docs.isEmpty) {
            // User has no carts
            return left(const CartFailure.emptyCart());
          } else {
            // User has some carts
            final List<Cart> carts = [];
            for (final userCartDocSnapshot in cartsSnapshot.docs) {
              final cartItemsCollection =
                  userCartDocSnapshot.reference.collection('cartItems');

              QuerySnapshot querySnapshot = await cartItemsCollection.get();
              final listOfCartItemDtos = querySnapshot.docs
                  .map(
                      (itemDocument) => CartItemDto.fromFirestore(itemDocument))
                  .toList();

              final cart = CartDto.fromFirestore(
                      doc: userCartDocSnapshot, cartItems: listOfCartItemDtos)
                  .toDomain();
              carts.add(cart);
            }
            return right(UserCarts(
                id: UniqueId.fromUniqueString(cartsSnapshot.docs.first.id),
                carts: NonEmptyList(KtList.from(carts))));
          }
        });
      } on FirebaseException catch (e) {
        //TODO log this error

        // log.error(e.toString());

        if (e.code.contains('permission-denied')) {
          yield left(const CartFailure.insufficientPermission());
        } else {
          //TODO log this error
          // log.error(e.toString());
          yield left(const CartFailure.unexpected());
        }
      }
    } else {
      yield left(const CartFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<CartFailure, Unit>> removeItemFromCart(CartItem item) async {
    final callable = FirebaseFunctions.instance.httpsCallable(
      'addItemToCart-deleteCartItem',
      options: HttpsCallableOptions(timeout: const Duration(seconds: 10)),
    );

    try {
      await callable.call({
        "cartItemId": item.id.getOrCrash(),
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
  Future<Either<CartFailure, Unit>> updateItemInCart(CartItem item) {
    // TODO: implement updateItemInCart
    throw UnimplementedError();
  }

  @override
  Future<Either<CartFailure, Unit>> decrementItemQuantity(CartItem item) async {
    final callable = FirebaseFunctions.instance.httpsCallable(
      'addItemToCart-decrementCartItem',
      options: HttpsCallableOptions(timeout: const Duration(seconds: 10)),
    );

    try {
      await callable.call({
        "cartItemId": item.id.getOrCrash(),
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
  Future<Either<CartFailure, Unit>> incrementItemQuantity(CartItem item) async {
    final callable = FirebaseFunctions.instance.httpsCallable(
      'addItemToCart-incrementCartItem',
      options: HttpsCallableOptions(timeout: const Duration(seconds: 10)),
    );

    try {
      await callable.call({
        "cartItemId": item.id.getOrCrash(),
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
  Future<Either<CartFailure, Unit>> removeCart(Cart cart) async {
    final callable = FirebaseFunctions.instance.httpsCallable(
      'addItemToCart-deleteCart',
      options: HttpsCallableOptions(timeout: const Duration(seconds: 10)),
    );

    try {
      await callable.call({"shopId": cart.shop.id.getOrCrash()});

      return right(unit);
    } on FirebaseFunctionsException {
      return left(const CartFailure.unexpected());
    } on TimeoutException {
      return left(const CartFailure.noInternetConnection());
    }
  }
}
