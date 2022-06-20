// Mocks generated by Mockito 5.2.0 from annotations
// in shopify_client/test/application/product_watcher/product_watcher_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:kt_dart/kt.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shopify_client/domain/product/i_product_repository.dart' as _i3;
import 'package:shopify_domain/core.dart' as _i7;
import 'package:shopify_domain/product.dart' as _i5;
import 'package:shopify_domain/shop/shop.dart' as _i8;

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
  _i4.Stream<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>> watchAllNearby(
          _i7.Location? location, double? radius) =>
      (super.noSuchMethod(Invocation.method(#watchAllNearby, [location, radius]),
          returnValue: Stream<
              _i2.Either<_i5.ProductFailure,
                  _i6.KtList<_i5.PricedProduct>>>.empty()) as _i4
          .Stream<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>>);
  @override
  _i4.Stream<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>>
      watchAllNearbyByCategory(double? radius, _i5.Category? category) => (super
          .noSuchMethod(
              Invocation.method(#watchAllNearbyByCategory, [radius, category]),
              returnValue: Stream<
                  _i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>>.empty()) as _i4
          .Stream<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>>);
  @override
  _i4.Future<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.Product>>>
      searchForProducts(String? term, {int? page = 0}) => (super.noSuchMethod(
              Invocation.method(#searchForProducts, [term], {#page: page}),
              returnValue: Future<
                      _i2.Either<_i5.ProductFailure, _i6.KtList<_i5.Product>>>.value(
                  _FakeEither_0<_i5.ProductFailure, _i6.KtList<_i5.Product>>()))
          as _i4.Future<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.Product>>>);
  @override
  _i4.Stream<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>>
      watchAllFromShop(_i8.Shop? shop) => (super.noSuchMethod(
          Invocation.method(#watchAllFromShop, [shop]),
          returnValue: Stream<
              _i2.Either<_i5.ProductFailure,
                  _i6.KtList<_i5.PricedProduct>>>.empty()) as _i4
          .Stream<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>>);
  @override
  _i4.Stream<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>>
      watchAllFromShopByCategory(_i8.Shop? shop, _i5.Category? category) => (super
          .noSuchMethod(
              Invocation.method(#watchAllFromShopByCategory, [shop, category]),
              returnValue: Stream<
                  _i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>>.empty()) as _i4
          .Stream<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>>);
  @override
  _i4.Future<
      _i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>> searchInShop(
          _i8.Shop? shop, String? term, {int? page = 0}) =>
      (super.noSuchMethod(
          Invocation.method(#searchInShop, [shop, term], {#page: page}),
          returnValue: Future<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>>.value(
              _FakeEither_0<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>())) as _i4
          .Future<_i2.Either<_i5.ProductFailure, _i6.KtList<_i5.PricedProduct>>>);
}
