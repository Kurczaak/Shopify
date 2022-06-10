// Mocks generated by Mockito 5.2.0 from annotations
// in shopify_manager/test/application/product/product_adder/product_adder_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shopify_domain/core/network/network_info.dart' as _i7;
import 'package:shopify_domain/product.dart' as _i5;
import 'package:shopify_domain/shop.dart' as _i6;
import 'package:shopify_manager/domain/product/i_product_repository.dart'
    as _i3;

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

/// A class which mocks [IProductRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIProductRepository extends _i1.Mock
    implements _i3.IProductRepository {
  MockIProductRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.ProductFailure, _i5.Product>> getByBarcode(
          _i5.Barcode? barcode) =>
      (super.noSuchMethod(Invocation.method(#getByBarcode, [barcode]),
              returnValue:
                  Future<_i2.Either<_i5.ProductFailure, _i5.Product>>.value(
                      _FakeEither_0<_i5.ProductFailure, _i5.Product>()))
          as _i4.Future<_i2.Either<_i5.ProductFailure, _i5.Product>>);
  @override
  _i4.Future<_i2.Either<_i5.ProductFailure, _i5.Product>> getFromShopByBarcode(
          _i6.Shop? shop, _i5.Barcode? barcode) =>
      (super.noSuchMethod(
              Invocation.method(#getFromShopByBarcode, [shop, barcode]),
              returnValue:
                  Future<_i2.Either<_i5.ProductFailure, _i5.Product>>.value(
                      _FakeEither_0<_i5.ProductFailure, _i5.Product>()))
          as _i4.Future<_i2.Either<_i5.ProductFailure, _i5.Product>>);
  @override
  _i4.Future<_i2.Either<_i5.ProductFailure, _i2.Unit>> create(
          _i5.ProductForm? productForm) =>
      (super.noSuchMethod(Invocation.method(#create, [productForm]),
          returnValue: Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>.value(
              _FakeEither_0<_i5.ProductFailure, _i2.Unit>())) as _i4
          .Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.ProductFailure, _i2.Unit>> addToShop(
          _i5.ProductForm? productForm, _i6.Shop? shop, _i5.Price? price) =>
      (super.noSuchMethod(
          Invocation.method(#addToShop, [productForm, shop, price]),
          returnValue: Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>.value(
              _FakeEither_0<_i5.ProductFailure, _i2.Unit>())) as _i4
          .Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.ProductFailure, _i2.Unit>> update(
          _i5.Product? product) =>
      (super.noSuchMethod(Invocation.method(#update, [product]),
          returnValue: Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>.value(
              _FakeEither_0<_i5.ProductFailure, _i2.Unit>())) as _i4
          .Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.ProductFailure, _i2.Unit>> delete(
          _i5.Product? product) =>
      (super.noSuchMethod(Invocation.method(#delete, [product]),
          returnValue: Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>.value(
              _FakeEither_0<_i5.ProductFailure, _i2.Unit>())) as _i4
          .Future<_i2.Either<_i5.ProductFailure, _i2.Unit>>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i7.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}
