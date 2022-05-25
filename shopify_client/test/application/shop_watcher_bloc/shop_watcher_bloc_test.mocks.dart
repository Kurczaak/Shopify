// Mocks generated by Mockito 5.1.0 from annotations
// in shopify_client/test/application/shop_watcher_bloc/shop_watcher_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:kt_dart/collection.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shopify_client/domain/core/i_location_facade.dart' as _i3;
import 'package:shopify_client/domain/shop/i_shop_repository.dart' as _i6;
import 'package:shopify_domain/auth.dart' as _i9;
import 'package:shopify_domain/core.dart' as _i5;
import 'package:shopify_domain/shop.dart' as _i7;

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

/// A class which mocks [ILocationFacade].
///
/// See the documentation for Mockito's code generation for more information.
class MockILocationFacade extends _i1.Mock implements _i3.ILocationFacade {
  MockILocationFacade() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.LocationFailure, _i5.Location>>
      getCurrentLocation() => (super.noSuchMethod(
              Invocation.method(#getCurrentLocation, []),
              returnValue:
                  Future<_i2.Either<_i5.LocationFailure, _i5.Location>>.value(
                      _FakeEither_0<_i5.LocationFailure, _i5.Location>()))
          as _i4.Future<_i2.Either<_i5.LocationFailure, _i5.Location>>);
  @override
  _i4.Future<_i2.Either<_i5.LocationFailure, _i5.Location>> getUserLocation() =>
      (super.noSuchMethod(Invocation.method(#getUserLocation, []),
              returnValue:
                  Future<_i2.Either<_i5.LocationFailure, _i5.Location>>.value(
                      _FakeEither_0<_i5.LocationFailure, _i5.Location>()))
          as _i4.Future<_i2.Either<_i5.LocationFailure, _i5.Location>>);
  @override
  _i4.Future<_i2.Either<_i5.LocationFailure, _i2.Unit>> setUserAddress(
          _i5.Address? address) =>
      (super.noSuchMethod(Invocation.method(#setUserAddress, [address]),
          returnValue: Future<_i2.Either<_i5.LocationFailure, _i2.Unit>>.value(
              _FakeEither_0<_i5.LocationFailure, _i2.Unit>())) as _i4
          .Future<_i2.Either<_i5.LocationFailure, _i2.Unit>>);
}

/// A class which mocks [IShopRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIShopRepository extends _i1.Mock implements _i6.IShopRepository {
  MockIShopRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Stream<_i2.Either<_i7.ShopFailure, _i8.KtList<_i7.Shop>>> watchAll() =>
      (super.noSuchMethod(Invocation.method(#watchAll, []),
              returnValue: Stream<
                  _i2.Either<_i7.ShopFailure, _i8.KtList<_i7.Shop>>>.empty())
          as _i4.Stream<_i2.Either<_i7.ShopFailure, _i8.KtList<_i7.Shop>>>);
  @override
  _i4.Stream<_i2.Either<_i7.ShopFailure, _i8.KtList<_i7.Shop>>> watchNearby(
          _i5.Location? location, double? radius) =>
      (super.noSuchMethod(Invocation.method(#watchNearby, [location, radius]),
              returnValue: Stream<
                  _i2.Either<_i7.ShopFailure, _i8.KtList<_i7.Shop>>>.empty())
          as _i4.Stream<_i2.Either<_i7.ShopFailure, _i8.KtList<_i7.Shop>>>);
  @override
  _i4.Future<_i2.Either<_i7.ShopFailure, _i2.Unit>> create(
          _i7.Shop? shop, _i5.ShopLogo? logo, _i9.ShopifyUser? user) =>
      (super.noSuchMethod(Invocation.method(#create, [shop, logo, user]),
              returnValue: Future<_i2.Either<_i7.ShopFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i7.ShopFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i7.ShopFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i7.ShopFailure, _i2.Unit>> update(_i7.Shop? shop) =>
      (super.noSuchMethod(Invocation.method(#update, [shop]),
              returnValue: Future<_i2.Either<_i7.ShopFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i7.ShopFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i7.ShopFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i7.ShopFailure, _i2.Unit>> delete(_i7.Shop? shop) =>
      (super.noSuchMethod(Invocation.method(#delete, [shop]),
              returnValue: Future<_i2.Either<_i7.ShopFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i7.ShopFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i7.ShopFailure, _i2.Unit>>);
}
