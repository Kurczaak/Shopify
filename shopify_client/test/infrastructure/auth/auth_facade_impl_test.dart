import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/infrastructure/auth/auth_facade_impl.dart';
import 'package:shopify_domain/auth.dart';
import 'auth_facade_impl_test.mocks.dart';

@GenerateMocks([ShopifyAuth, ShopifyUser])
void main() {
  late MockShopifyAuth mockShopifyAuth;
  late AuthFacadeImpl authFacadeImpl;

  final mockShopifyUser = MockShopifyUser();

  setUp(() {
    mockShopifyAuth = MockShopifyAuth();
    authFacadeImpl = AuthFacadeImpl(mockShopifyAuth);
  });

  group('getSignedInUser', () {
    final callOutput = some<ShopifyUser>(mockShopifyUser);
    test(
      'should call shopifyAuth.getSignedInUser',
      () async {
        // arrange
        when(mockShopifyAuth.getSignedInUser())
            .thenAnswer((_) async => callOutput);
        // act
        await authFacadeImpl.getSignedInUser();
        // assert
        verify(mockShopifyAuth.getSignedInUser()).called(1);
      },
    );
    test(
      'should return the result of shopifyAuth.getSignedInUser',
      () async {
        // arrange
        when(mockShopifyAuth.getSignedInUser())
            .thenAnswer((_) async => callOutput);
        // act
        final result = await authFacadeImpl.getSignedInUser();
        // assert
        expect(result, callOutput);
      },
    );
  });

  group('registerWithEmailAndPassword', () {
    final callOutput = right<AuthFailure, Unit>(unit);
    final tEmail = EmailAddress('shopify@gmail.com');
    final tPassword = Password('12!@AbcDefg');
    test(
      'should call shopifyAuth.registerWithEmailAndPassword',
      () async {
        // arrange
        when(mockShopifyAuth.registerWithEmailAndPassword(
                emailAddress: tEmail, password: tPassword))
            .thenAnswer((_) async => callOutput);
        // act
        await authFacadeImpl.registerWithEmailAndPassword(
            emailAddress: tEmail, password: tPassword);
        // assert
        verify(mockShopifyAuth.registerWithEmailAndPassword(
                emailAddress: tEmail, password: tPassword))
            .called(1);
      },
    );
    test(
      'should return the result of shopifyAuth.registerWithEmailAndPassword',
      () async {
        // arrange
        when(mockShopifyAuth.registerWithEmailAndPassword(
                emailAddress: tEmail, password: tPassword))
            .thenAnswer((_) async => callOutput);
        // act
        final result = await authFacadeImpl.registerWithEmailAndPassword(
            emailAddress: tEmail, password: tPassword);
        // assert
        expect(result, callOutput);
      },
    );
  });

  group('signInWithEmailAndPassword', () {
    final callOutput = right<AuthFailure, Unit>(unit);
    final tEmail = EmailAddress('shopify@gmail.com');
    final tPassword = Password('12!@AbcDefg');
    test(
      'should call shopifyAuth.signInWithEmailAndPassword',
      () async {
        // arrange
        when(mockShopifyAuth.signInWithEmailAndPassword(
                emailAddress: tEmail, password: tPassword))
            .thenAnswer((_) async => callOutput);
        // act
        await authFacadeImpl.signInWithEmailAndPassword(
            emailAddress: tEmail, password: tPassword);
        // assert
        verify(mockShopifyAuth.signInWithEmailAndPassword(
                emailAddress: tEmail, password: tPassword))
            .called(1);
      },
    );
    test(
      'should return the result of shopifyAuth.signInWithEmailAndPassword',
      () async {
        // arrange
        when(mockShopifyAuth.signInWithEmailAndPassword(
                emailAddress: tEmail, password: tPassword))
            .thenAnswer((_) async => callOutput);
        // act
        final result = await authFacadeImpl.signInWithEmailAndPassword(
            emailAddress: tEmail, password: tPassword);
        // assert
        expect(result, callOutput);
      },
    );
  });

  group('signInWithGoogle', () {
    final callOutput = right<AuthFailure, Unit>(unit);
    test(
      'should call shopifyAuth.signInWithGoogle',
      () async {
        // arrange
        when(mockShopifyAuth.signInWithGoogle())
            .thenAnswer((_) async => callOutput);
        // act
        await authFacadeImpl.signInWithGoogle();
        // assert
        verify(mockShopifyAuth.signInWithGoogle()).called(1);
      },
    );
    test(
      'should return the result of shopifyAuth.signInWithGoogle',
      () async {
        // arrange
        when(mockShopifyAuth.signInWithGoogle())
            .thenAnswer((_) async => callOutput);
        // act
        final result = await authFacadeImpl.signInWithGoogle();
        // assert
        expect(result, callOutput);
      },
    );
  });

  test(
    'signOut should call shopifyAuth.signOut',
    () async {
      // act
      await authFacadeImpl.signOut();
      // assert
      verify(mockShopifyAuth.signOut()).called(1);
    },
  );
}
