import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/testing.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopify_client/domain/auth/auth_failure.dart';
import 'package:shopify_client/domain/auth/value_objects.dart';
import 'package:shopify_client/domain/core/errors.dart';
import 'package:shopify_client/infrastructure/auth/firebase_auth_facade.dart';

import 'firebase_auth_facade_test.mocks.dart';

@GenerateMocks([FirebaseAuth, UserCredential, GoogleSignIn])
void main() async {
  MockUserCredential userCredential = MockUserCredential();

  const emailAddressStr = 'correct@email.com';
  const passwordStr = '12ABcde!@';
  const invalidEmailAddressStr = 'invalid@.com';
  const invalidPasswordStr = '12345678';
  // Sign in.

  MockFirebaseAuth mockFirebaseAuth = MockFirebaseAuth();
  MockGoogleSignIn mockGoogleSignIn = MockGoogleSignIn();

  FirebaseAuthFacade firebaseAuthFacade =
      FirebaseAuthFacade(mockFirebaseAuth, mockGoogleSignIn);

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockGoogleSignIn = MockGoogleSignIn();
    firebaseAuthFacade = FirebaseAuthFacade(mockFirebaseAuth, mockGoogleSignIn);
  });
  group('registerWithEmailAndPassword', () {
    test(
      'should return right(unit) when succesfully registered',
      () async {
        //arrange
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
                email: emailAddressStr, password: passwordStr))
            .thenAnswer((_) async => userCredential);
        // act
        final failureOrUnit =
            await firebaseAuthFacade.registerWithEmailAndPassword(
                emailAddress: EmailAddress(emailAddressStr),
                password: Password(passwordStr));
        // assert
        verify(mockFirebaseAuth.createUserWithEmailAndPassword(
            email: emailAddressStr, password: passwordStr));
        expect(failureOrUnit, right(unit));
      },
    );

    Future<void> _throwFirebaseAuthExceptionAndExpectAuthFailure({
      required String authExceptionCode,
      required AuthFailure authFailure,
    }) async {
      //arrange
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
              email: emailAddressStr, password: passwordStr))
          .thenThrow(FirebaseAuthException(code: authExceptionCode));
      // act
      final failureOrUnit =
          await firebaseAuthFacade.registerWithEmailAndPassword(
              emailAddress: EmailAddress(emailAddressStr),
              password: Password(passwordStr));
      // assert
      verify(mockFirebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr));
      expect(failureOrUnit, left(authFailure));
    }

    test(
      'should return AuthFailure.emailAlreadyInUse when email already in use',
      () async {
        await _throwFirebaseAuthExceptionAndExpectAuthFailure(
            authExceptionCode: 'email-already-in-use',
            authFailure: const AuthFailure.emailAlreadyInUse());
      },
    );
    test(
      'should return AuthFailure.serverError when other exception occur',
      () async {
        await _throwFirebaseAuthExceptionAndExpectAuthFailure(
            authExceptionCode: 'any-code',
            authFailure: const AuthFailure.serverSerror());
      },
    );

    void _checkUnexpectedValueErrorAndZeroInteractionsWithFirebase(
        {required String emailAddress, required String password}) {
      //arrange

      when(mockFirebaseAuth.createUserWithEmailAndPassword(
              email: emailAddress, password: password))
          .thenThrow(FirebaseAuthException(code: 'invalid-credential'));
      // act
      // ignore: prefer_function_declarations_over_variables
      final functionCall = () async =>
          await firebaseAuthFacade.registerWithEmailAndPassword(
              emailAddress: EmailAddress(emailAddress),
              password: Password(password));
      // assert
      verifyZeroInteractions(mockFirebaseAuth);
      expect(() async => await functionCall(),
          throwsA(const TypeMatcher<UnexpectedValueError>()));
    }

    test(
      'should throw an UnexpectedValueError when trying to register with invalid email',
      () async {
        _checkUnexpectedValueErrorAndZeroInteractionsWithFirebase(
            emailAddress: invalidEmailAddressStr, password: passwordStr);
      },
    );

    test(
      'should throw an UnexpectedValueError when trying to register with invalid password',
      () async {
        _checkUnexpectedValueErrorAndZeroInteractionsWithFirebase(
            emailAddress: emailAddressStr, password: invalidPasswordStr);
      },
    );
  });
}
