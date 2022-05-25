import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/auth/auth_bloc.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:mockito/annotations.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'auth_bloc_test.mocks.dart';
import 'package:bloc_test/bloc_test.dart';

@GenerateMocks([IAuthFacade])
void main() {
  MockIAuthFacade mockIAuthFacade = MockIAuthFacade();

  group('authCheckRequested', () {
    blocTest(
      'should return the Authenticated state when a user is signed in',
      build: () => AuthBloc(mockIAuthFacade),
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
      build: () => AuthBloc(mockIAuthFacade),
      setUp: () {
        when(mockIAuthFacade.getSignedInUser()).thenAnswer((_) async => none());
      },
      act: (AuthBloc bloc) => bloc.add(const AuthEvent.authCheckRequested()),
      expect: () {
        return [const AuthState.unauthenticated()];
      },
    );
  });

  group('signedOut', () {
    blocTest(
      'should call _authFacade.signOut when signing out xd',
      build: () => AuthBloc(mockIAuthFacade),
      act: (AuthBloc bloc) => bloc.add(const AuthEvent.signedOut()),
      verify: (_) {
        verify(mockIAuthFacade.signOut());
      },
    );
    blocTest(
      'should emit Unauthenticated state when signing out',
      build: () => AuthBloc(mockIAuthFacade),
      act: (AuthBloc bloc) => bloc.add(const AuthEvent.signedOut()),
      expect: () {
        return [const AuthState.unauthenticated()];
      },
    );
  });
}
