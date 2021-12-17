import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/auth/auth_bloc.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:mockito/annotations.dart';
import 'package:shopify_client/domain/auth/user.dart';
import 'package:shopify_client/domain/core/value_objects.dart';
import 'auth_bloc_test.mocks.dart';
import 'package:bloc_test/bloc_test.dart';

@GenerateMocks([IAuthFacade])
void main() {
  MockIAuthFacade mockIAuthFacade = MockIAuthFacade();
  AuthBloc authBloc = AuthBloc(mockIAuthFacade);

  setUp(() {
    mockIAuthFacade = MockIAuthFacade();
    authBloc = AuthBloc(mockIAuthFacade);
  });

  blocTest(
    'should return the Authenticated state when a user is signed in',
    build: () {
      return AuthBloc(mockIAuthFacade);
    },
    setUp: () {
      final user = ShopifyUser(id: UniqueId());
      when(mockIAuthFacade.getSignedInUser())
          .thenAnswer((_) async => some(user));
    },
    act: (AuthBloc bloc) => bloc.add(const AuthEvent.authCheckRequested()),
    expect: () {
      return [const AuthState.authenticated()];
    },
  );

  blocTest(
    'should return the Unauthenticated state when a user is not signed in',
    build: () {
      return AuthBloc(mockIAuthFacade);
    },
    setUp: () {
      when(mockIAuthFacade.getSignedInUser()).thenAnswer((_) async => none());
    },
    act: (AuthBloc bloc) => bloc.add(const AuthEvent.authCheckRequested()),
    expect: () {
      return [const AuthState.unauthenticated()];
    },
  );
}
