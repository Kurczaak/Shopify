// Mocks generated by Mockito 5.2.0 from annotations
// in shopify_client/test/application/user_carts/user_carts_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shopify_client/domain/cart/I_cart_facade.dart' as _i3;
import 'package:shopify_domain/cart/cart.dart' as _i6;
import 'package:shopify_domain/cart/cart_failure.dart' as _i5;
import 'package:shopify_domain/cart/cart_item.dart' as _i8;
import 'package:shopify_domain/core/network/network_info.dart' as _i10;
import 'package:shopify_domain/core/value_objects.dart' as _i9;
import 'package:shopify_domain/product/product_snippets.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [ICartFacade].
///
/// See the documentation for Mockito's code generation for more information.
class MockICartFacade extends _i1.Mock implements _i3.ICartFacade {
  MockICartFacade() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i2.Either<_i5.CartFailure, _i6.UserCarts>> getUserCarts() =>
      (super.noSuchMethod(Invocation.method(#getUserCarts, []),
              returnValue:
                  Stream<_i2.Either<_i5.CartFailure, _i6.UserCarts>>.empty())
          as _i4.Stream<_i2.Either<_i5.CartFailure, _i6.UserCarts>>);
  @override
  _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>> addProductToCart(
          _i7.PricedProduct? product,
          {int? quantity = 1}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #addProductToCart, [product], {#quantity: quantity}),
              returnValue: Future<_i2.Either<_i5.CartFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.CartFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>> incrementCartItem(
          _i8.CartItem? cartItem) =>
      (super.noSuchMethod(Invocation.method(#incrementCartItem, [cartItem]),
              returnValue: Future<_i2.Either<_i5.CartFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.CartFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>> decrementCartItem(
          _i8.CartItem? cartItem) =>
      (super.noSuchMethod(Invocation.method(#decrementCartItem, [cartItem]),
              returnValue: Future<_i2.Either<_i5.CartFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.CartFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>> deleteCartItem(
          _i8.CartItem? cartItem) =>
      (super.noSuchMethod(Invocation.method(#deleteCartItem, [cartItem]),
              returnValue: Future<_i2.Either<_i5.CartFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.CartFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>> deleteCart(
          _i6.Cart? cart) =>
      (super.noSuchMethod(Invocation.method(#deleteCart, [cart]),
              returnValue: Future<_i2.Either<_i5.CartFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.CartFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>> sendOrder(_i6.Cart? cart) =>
      (super.noSuchMethod(Invocation.method(#sendOrder, [cart]),
              returnValue: Future<_i2.Either<_i5.CartFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.CartFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>> addProductToFavourites(
          _i9.UniqueId? id) =>
      (super.noSuchMethod(Invocation.method(#addProductToFavourites, [id]),
              returnValue: Future<_i2.Either<_i5.CartFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.CartFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.CartFailure, _i2.Unit>>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i10.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}
