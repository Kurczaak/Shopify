// Mocks generated by Mockito 5.1.0 from annotations
// in shopify_client/test/application/auth/auth_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shopify_domain/auth.dart';
import 'package:shopify_domain/auth.dart';
import 'package:shopify_domain/auth.dart';
import 'package:shopify_domain/auth.dart';

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeOption_0<A> extends _i1.Fake implements _i2.Option<A> {}

class _FakeEither_1<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [IAuthFacade].
///
/// See the documentation for Mockito's code generation for more information.
class MockIAuthFacade extends _i1.Mock implements _i3.IAuthFacade {
  MockIAuthFacade() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Option<_i5.ShopifyUser>> getSignedInUser() =>
      (super.noSuchMethod(Invocation.method(#getSignedInUser, []),
              returnValue: Future<_i2.Option<_i5.ShopifyUser>>.value(
                  _FakeOption_0<_i5.ShopifyUser>()))
          as _i4.Future<_i2.Option<_i5.ShopifyUser>>);
  @override
  _i4.Future<_i2.Either<_i6.AuthFailure, _i2.Unit>>
      registerWithEmailAndPassword(
              {_i7.EmailAddress? emailAddress, _i7.Password? password}) =>
          (super.noSuchMethod(
              Invocation.method(#registerWithEmailAndPassword, [],
                  {#emailAddress: emailAddress, #password: password}),
              returnValue: Future<_i2.Either<_i6.AuthFailure, _i2.Unit>>.value(
                  _FakeEither_1<_i6.AuthFailure, _i2.Unit>())) as _i4
              .Future<_i2.Either<_i6.AuthFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i6.AuthFailure, _i2.Unit>> signInWithEmailAndPassword(
          {_i7.EmailAddress? emailAddress, _i7.Password? password}) =>
      (super.noSuchMethod(
              Invocation.method(#signInWithEmailAndPassword, [],
                  {#emailAddress: emailAddress, #password: password}),
              returnValue: Future<_i2.Either<_i6.AuthFailure, _i2.Unit>>.value(
                  _FakeEither_1<_i6.AuthFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i6.AuthFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i6.AuthFailure, _i2.Unit>> signInWithGoogle() =>
      (super.noSuchMethod(Invocation.method(#signInWithGoogle, []),
              returnValue: Future<_i2.Either<_i6.AuthFailure, _i2.Unit>>.value(
                  _FakeEither_1<_i6.AuthFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i6.AuthFailure, _i2.Unit>>);
  @override
  _i4.Future<void> signOut() =>
      (super.noSuchMethod(Invocation.method(#signOut, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
}
