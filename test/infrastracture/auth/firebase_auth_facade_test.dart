import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopify_client/domain/auth/auth_failure.dart';
import 'package:shopify_client/domain/auth/value_objects.dart';
import 'package:shopify_client/domain/core/errors.dart';
import 'package:shopify_client/infrastructure/auth/firebase_auth_facade.dart';

import 'firebase_auth_facade_test.mocks.dart';

mixin LegacyEquality {
  @override
  bool operator ==(dynamic other) => throw UnimplementedError();

  @override
  int get hashCode => throw UnimplementedError();
}

class MockGoogleSignInAuthentication extends Mock
    implements GoogleSignInAuthentication {
  @override
  String get accessToken => 'accessToken';
  @override
  String get idToken => 'id_token';
}

class FakeUserCredential extends Fake implements UserCredential {}

class MockGoogleSignInAccount extends Mock
    with LegacyEquality
    implements GoogleSignInAccount {
  MockGoogleSignInAccount() {
    throwOnMissingStub(this);
  }

  @override
  String get email => 'email@example.com';
  @override
  String get id => 'id1234';
  @override
  Future<GoogleSignInAuthentication> get authentication =>
      (super.noSuchMethod(Invocation.getter(#authentication),
              returnValue: Future<GoogleSignInAuthentication>.value(
                  MockGoogleSignInAuthentication()))
          as Future<GoogleSignInAuthentication>);
}

@GenerateMocks([
  FirebaseAuth,
  UserCredential,
  GoogleSignIn,
])
void main() async {
  MockUserCredential userCredential = MockUserCredential();
  MockGoogleSignInAccount googleSignInAccount = MockGoogleSignInAccount();
  MockGoogleSignInAuthentication mockGoogleSignInAuthentication =
      MockGoogleSignInAuthentication();

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
    when(mockFirebaseAuth.signInWithCredential(any))
        .thenAnswer((_) async => FakeUserCredential());
    when(googleSignInAccount.authentication)
        .thenAnswer((_) async => MockGoogleSignInAuthentication());
  });

  group('getSignedInUser', () {
    test(
      'should return none() if no user is signed in',
      () async {
        // arrange
        when(mockFirebaseAuth.currentUser).thenAnswer((_) => null);
        // act
        final result = firebaseAuthFacade.getSignedInUser();
        // assert
        expect(result, none());
      },
    );
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

    test(
      'should return AuthFailure.emailAlreadyInUse when email already in use',
      () async {
        await _throwFirebaseAuthExceptionAndExpectAuthFailure(
          authExceptionCode: 'email-already-in-use',
          authFailure: const AuthFailure.emailAlreadyInUse(),
          firebaseAuthFacadeCall:
              firebaseAuthFacade.registerWithEmailAndPassword,
          mockFirebaseCall: mockFirebaseAuth.createUserWithEmailAndPassword,
        );
      },
    );
    test(
      'should return AuthFailure.serverError when other exception occur',
      () async {
        await _throwFirebaseAuthExceptionAndExpectAuthFailure(
          authExceptionCode: 'any-code',
          authFailure: const AuthFailure.serverSerror(),
          firebaseAuthFacadeCall:
              firebaseAuthFacade.registerWithEmailAndPassword,
          mockFirebaseCall: mockFirebaseAuth.createUserWithEmailAndPassword,
        );
      },
    );

    test(
      'should throw an UnexpectedValueError when trying to register with invalid email',
      () async {
        _checkUnexpectedValueErrorAndZeroInteractionsWithFirebase(
          emailAddress: invalidEmailAddressStr,
          password: passwordStr,
          mockFirebaseCall: mockFirebaseAuth.createUserWithEmailAndPassword,
          firebaseAuthFacadeCall:
              firebaseAuthFacade.registerWithEmailAndPassword,
        );
      },
    );

    test(
      'should throw an UnexpectedValueError when trying to register with invalid password',
      () async {
        _checkUnexpectedValueErrorAndZeroInteractionsWithFirebase(
          emailAddress: emailAddressStr,
          password: invalidPasswordStr,
          mockFirebaseCall: mockFirebaseAuth.createUserWithEmailAndPassword,
          firebaseAuthFacadeCall:
              firebaseAuthFacade.registerWithEmailAndPassword,
        );
      },
    );
  });

  group('signInWIthEmailAndPassword', () {
    test(
      'should call the FirebaseAuth API when entered a correct email and password combination',
      () async {
        // arrange
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: emailAddressStr, password: passwordStr))
            .thenAnswer((_) async => MockUserCredential());
        // act

        await firebaseAuthFacade.signInWithEmailAndPassword(
            emailAddress: EmailAddress(emailAddressStr),
            password: Password(passwordStr));
        // assert
        verify(mockFirebaseAuth.signInWithEmailAndPassword(
            email: emailAddressStr, password: passwordStr));
      },
    );

    test(
      'should return unit when entered a correct email and password combination',
      () async {
        // arrange
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: emailAddressStr, password: passwordStr))
            .thenAnswer((_) async => MockUserCredential());
        // act
        final failureOrUnit =
            await firebaseAuthFacade.signInWithEmailAndPassword(
                emailAddress: EmailAddress(emailAddressStr),
                password: Password(passwordStr));
        // assert
        expect(failureOrUnit, right(unit));
      },
    );
    test(
      'should return AuthFailure.invalidEmailAndPasswordCombination when entered password is correct but does not match given email address',
      () async {
        await _throwFirebaseAuthExceptionAndExpectAuthFailure(
          authExceptionCode: 'wrong-password',
          authFailure: const AuthFailure.invalidEmailAndPasswordCombination(),
          firebaseAuthFacadeCall: firebaseAuthFacade.signInWithEmailAndPassword,
          mockFirebaseCall: mockFirebaseAuth.signInWithEmailAndPassword,
        );
      },
    );

    test(
      'should return AuthFailure.invalidEmailAndPasswordCombination when user with given email address has not been found',
      () async {
        await _throwFirebaseAuthExceptionAndExpectAuthFailure(
          authExceptionCode: 'user-not-found',
          authFailure: const AuthFailure.invalidEmailAndPasswordCombination(),
          firebaseAuthFacadeCall: firebaseAuthFacade.signInWithEmailAndPassword,
          mockFirebaseCall: mockFirebaseAuth.signInWithEmailAndPassword,
        );
      },
    );

    test(
      'should return AuthFailure.serverError when any other FirebaseAuthException is thrown',
      () async {
        await _throwFirebaseAuthExceptionAndExpectAuthFailure(
          authExceptionCode: 'any-exception',
          authFailure: const AuthFailure.serverSerror(),
          firebaseAuthFacadeCall: firebaseAuthFacade.signInWithEmailAndPassword,
          mockFirebaseCall: mockFirebaseAuth.signInWithEmailAndPassword,
        );
      },
    );

    test(
      'should throw an UnexpectedValueError when trying to signIn with incorrect email address',
      () async {
        _checkUnexpectedValueErrorAndZeroInteractionsWithFirebase(
            emailAddress: invalidEmailAddressStr,
            password: passwordStr,
            mockFirebaseCall: mockFirebaseAuth.signInWithEmailAndPassword,
            firebaseAuthFacadeCall:
                firebaseAuthFacade.signInWithEmailAndPassword);
      },
    );

    test(
      'should throw an UnexpectedValueError when trying to signIn with incorrect password',
      () async {
        _checkUnexpectedValueErrorAndZeroInteractionsWithFirebase(
            emailAddress: emailAddressStr,
            password: invalidPasswordStr,
            mockFirebaseCall: mockFirebaseAuth.signInWithEmailAndPassword,
            firebaseAuthFacadeCall:
                firebaseAuthFacade.signInWithEmailAndPassword);
      },
    );
  });

  group('signInWithGoogle', () {
    test(
      'should call googleSignInApi when signing in with google',
      () async {
        // arrange
        when(mockGoogleSignIn.signIn())
            .thenAnswer((_) async => googleSignInAccount);
        // act
        firebaseAuthFacade.signInWithGoogle();
        // assert
        verify(mockGoogleSignIn.signIn());
      },
    );

    test(
      'should return unit when succesfully signedIn',
      () async {
        // arrange
        when(mockGoogleSignIn.signIn())
            .thenAnswer((_) async => googleSignInAccount);
        // act
        final valueOrFailure = await firebaseAuthFacade.signInWithGoogle();
        // assert
        expect(valueOrFailure, right(unit));
      },
    );

    test(
      'should return AuthFailure when cancelled by user',
      () async {
        // arrange
        when(mockGoogleSignIn.signIn()).thenAnswer((_) async => null);
        // act
        final valueOrFailure = await firebaseAuthFacade.signInWithGoogle();
        // assert
        expect(valueOrFailure, left(const AuthFailure.cancelledByUser()));
      },
    );

    test(
      'should sign in with google credentials when account is not null',
      () async {
        // arrange
        when(mockGoogleSignIn.signIn())
            .thenAnswer((_) async => googleSignInAccount);
        when(googleSignInAccount.authentication)
            .thenAnswer((_) async => mockGoogleSignInAuthentication);

        final authCredential = GoogleAuthProvider.credential(
            accessToken: mockGoogleSignInAuthentication.accessToken,
            idToken: mockGoogleSignInAuthentication.idToken);
        final userMock = MockUserCredential();
        when(mockFirebaseAuth.signInWithCredential(authCredential))
            .thenAnswer((_) async => userMock);
        //act
        await firebaseAuthFacade.signInWithGoogle();
        // assert
        verify(mockFirebaseAuth.signInWithCredential(any)).called(1);
      },
    );
  });
}

/// Tests if [firebaseAuthFacadeCall] returns a certain [authFailure] when
/// [mockFirebaseCall] returns a FirebaseAuthException with a given [authExceptionCode]
/// and verifies if [mockFirebaseCall] is called within the [firebaseAuthFacadeCall]
/// assuring correct email and password credentials
Future<void> _throwFirebaseAuthExceptionAndExpectAuthFailure({
  required String authExceptionCode,
  required AuthFailure authFailure,
  required Future<UserCredential> Function(
          {required String email, required String password})
      mockFirebaseCall,
  required Future<Either<AuthFailure, Unit>> Function(
          {required EmailAddress emailAddress, required Password password})
      firebaseAuthFacadeCall,
}) async {
  //arrange
  const correctEmailStr = 'correct@email.com';
  const correctPasswordStr = '12ABcde!@';
  when(mockFirebaseCall(email: correctEmailStr, password: correctPasswordStr))
      .thenThrow(FirebaseAuthException(code: authExceptionCode));
  // act
  final failureOrUnit = await firebaseAuthFacadeCall(
      emailAddress: EmailAddress(correctEmailStr),
      password: Password(correctPasswordStr));
  // assert
  verify(
      mockFirebaseCall(email: correctEmailStr, password: correctPasswordStr));
  expect(failureOrUnit, left(authFailure));
}

/// Tests if UnexpectedValueError is thrown when trying to execute a [firebaseAuthFacadeCall]
/// with an incorrect [emailAddress] or an incorrect [password], and making sure
/// that the [mockFirebaseCall] is not executed during this attempt
void _checkUnexpectedValueErrorAndZeroInteractionsWithFirebase({
  required String emailAddress,
  required String password,
  required Future<UserCredential> Function(
          {required String email, required String password})
      mockFirebaseCall,
  required Future<Either<AuthFailure, Unit>> Function(
          {required EmailAddress emailAddress, required Password password})
      firebaseAuthFacadeCall,
}) {
  //arrange
  when(mockFirebaseCall(email: emailAddress, password: password))
      .thenThrow(FirebaseAuthException(code: 'invalid-credential'));
  // act
  // ignore: prefer_function_declarations_over_variables
  final functionCall = () async => await firebaseAuthFacadeCall(
      emailAddress: EmailAddress(emailAddress), password: Password(password));
  // assert
  verifyNever(mockFirebaseCall(email: emailAddress, password: password));
  expect(() async => await functionCall(),
      throwsA(const TypeMatcher<UnexpectedValueError>()));
}
