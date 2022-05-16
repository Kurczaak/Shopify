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

  test(
    'getSignedInUser should call shopifyAuth.getSignedInUser',
    () async {
      // arrange
      when(mockShopifyAuth.getSignedInUser())
          .thenAnswer((_) async => some(mockShopifyUser));
      // act
      await authFacadeImpl.getSignedInUser();
      // assert
      verify(mockShopifyAuth.getSignedInUser()).called(1);
    },
  );

  test(
    'registerWithEmailAndPassword should call shopifyAuth.registerWithEmailAndPassword',
    () async {
      // arrange
      final tEmail = EmailAddress('shopify@gmail.com');
      final tPassword = Password('12!@AbcDefg');
      when(mockShopifyAuth.registerWithEmailAndPassword(
              emailAddress: tEmail, password: tPassword))
          .thenAnswer((_) async => right(unit));
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
    'signInWithEmailAndPassword should call shopifyAuth.signInWithEmailAndPassword',
    () async {
      // arrange
      final tEmail = EmailAddress('shopify@gmail.com');
      final tPassword = Password('12!@AbcDefg');
      when(mockShopifyAuth.signInWithEmailAndPassword(
              emailAddress: tEmail, password: tPassword))
          .thenAnswer((_) async => right(unit));
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
    'signInWithGoogle should call shopifyAuth.signInWithGoogle',
    () async {
      // arrange
      when(mockShopifyAuth.signInWithGoogle())
          .thenAnswer((_) async => right(unit));
      // act
      await authFacadeImpl.signInWithGoogle();
      // assert
      verify(mockShopifyAuth.signInWithGoogle()).called(1);
    },
  );

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
