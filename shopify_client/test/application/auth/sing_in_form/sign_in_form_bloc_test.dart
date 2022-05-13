import 'package:flutter/material.dart';
import 'package:mockito/annotations.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:shopify_domain/auth.dart';
import 'package:shopify_domain/auth.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_domain/auth.dart';

import 'sign_in_form_bloc_test.mocks.dart';

@GenerateMocks([IAuthFacade])
void main() {
  MockIAuthFacade mockIAuthFacade = MockIAuthFacade();
  SignInFormBloc signInFormBloc = SignInFormBloc(mockIAuthFacade);
  const correctPasswordStr = '123ABcd!@#';
  const incorrectPasswordStr = 'abcde';
  final correctPassword = Password(correctPasswordStr);
  final incorrectPassword = Password(incorrectPasswordStr);
  const correctEmailStr = 'correct@email.com';
  const incorrectEmailStr = 'incorrectemail.com';
  final correctEmail = EmailAddress(correctEmailStr);
  final incorrectEmail = EmailAddress(incorrectEmailStr);

  setUp(() {
    mockIAuthFacade = MockIAuthFacade();
    signInFormBloc = SignInFormBloc(mockIAuthFacade);
  });

  dynamic _loadingAndLoadedStates(
      {required Either<AuthFailure, Unit> failureOrSuccess}) {
    return [
      SignInFormState.initial().copyWith(isSubmitting: true),
      SignInFormState.initial().copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ),
    ];
  }

  SignInFormBloc _mockNoParamFunctionAndBuild({
    required Future<Either<AuthFailure, Unit>> Function() call,
    required Either<AuthFailure, Unit> failureOrSuccess,
  }) {
    when(call()).thenAnswer((_) async => failureOrSuccess);
    return SignInFormBloc(mockIAuthFacade);
  }

  SignInFormBloc _mockActionOnEmailAndPasswordAndBuild({
    required Future<Either<AuthFailure, Unit>> Function(
            {required EmailAddress emailAddress, required Password password})
        call,
    required EmailAddress emailAddress,
    required Password password,
    required Either<AuthFailure, Unit> failureOrSuccess,
  }) {
    when(call(emailAddress: emailAddress, password: password))
        .thenAnswer((_) async => failureOrSuccess);
    return SignInFormBloc(mockIAuthFacade);
  }

  group('Email changed', () {
    blocTest(
      'should emit a state with correct email address',
      build: () {
        return SignInFormBloc(mockIAuthFacade);
      },
      act: (SignInFormBloc bloc) =>
          bloc.add(const SignInFormEvent.emailChanged(correctEmailStr)),
      expect: () {
        return [SignInFormState.initial().copyWith(emailAddress: correctEmail)];
      },
    );

    blocTest(
      'should emit a state with incorrect email address',
      build: () {
        return SignInFormBloc(mockIAuthFacade);
      },
      act: (SignInFormBloc bloc) =>
          bloc.add(const SignInFormEvent.emailChanged(incorrectEmailStr)),
      expect: () {
        return [
          SignInFormState.initial().copyWith(emailAddress: incorrectEmail)
        ];
      },
    );

    blocTest(
      'should emit a state with none authFailureOrSuccessOption when email addres changes',
      build: () {
        return SignInFormBloc(mockIAuthFacade);
      },
      seed: () => SignInFormState.initial().copyWith(
        authFailureOrSuccessOption:
            some(left(const AuthFailure.serverSerror())),
      ),
      act: (SignInFormBloc bloc) =>
          bloc.add(const SignInFormEvent.emailChanged(incorrectEmailStr)),
      expect: () {
        return [
          SignInFormState.initial().copyWith(emailAddress: incorrectEmail)
        ];
      },
    );
  });

  group('Password changed', () {
    blocTest(
      'should emit a state with correct email address',
      build: () {
        return SignInFormBloc(mockIAuthFacade);
      },
      act: (SignInFormBloc bloc) =>
          bloc.add(const SignInFormEvent.passwordChanged(correctPasswordStr)),
      expect: () {
        return [SignInFormState.initial().copyWith(password: correctPassword)];
      },
    );

    blocTest(
      'should emit a state with incorrect email address',
      build: () {
        return SignInFormBloc(mockIAuthFacade);
      },
      act: (SignInFormBloc bloc) =>
          bloc.add(const SignInFormEvent.passwordChanged(incorrectPasswordStr)),
      expect: () {
        return [
          SignInFormState.initial().copyWith(password: incorrectPassword)
        ];
      },
    );

    blocTest(
      'should emit a state with none authFailureOrSuccessOption when password changes',
      build: () {
        return SignInFormBloc(mockIAuthFacade);
      },
      seed: () => SignInFormState.initial().copyWith(
        authFailureOrSuccessOption:
            some(left(const AuthFailure.serverSerror())),
      ),
      act: (SignInFormBloc bloc) =>
          bloc.add(const SignInFormEvent.passwordChanged(incorrectPasswordStr)),
      expect: () {
        return [
          SignInFormState.initial().copyWith(password: incorrectPassword)
        ];
      },
    );
  });

  group('signInWithGooglePressed Tests', () {
    test('initial state should be empty', () {
      // assert
      expect(signInFormBloc.initialState, equals(SignInFormState.initial()));
    });

    dynamic actFunction(SignInFormBloc bloc) =>
        bloc.add((const SignInFormEvent.signInWithGooglePressed()));

    dynamic verifyCallignSignInWithGoogle(_) {
      verify(mockIAuthFacade.signInWithGoogle());
    }

    blocTest(
      'should emit Loading and Loaded state when successful',
      build: () => _mockNoParamFunctionAndBuild(
          call: mockIAuthFacade.signInWithGoogle,
          failureOrSuccess: right(unit)),
      act: actFunction,
      expect: () => _loadingAndLoadedStates(failureOrSuccess: right(unit)),
      verify: (_) => verifyCallignSignInWithGoogle,
    );

    blocTest(
      'should emit Loading and Failure state when cancelled by user',
      build: () => _mockNoParamFunctionAndBuild(
          call: mockIAuthFacade.signInWithGoogle,
          failureOrSuccess: left(const AuthFailure.cancelledByUser())),
      act: actFunction,
      expect: () => _loadingAndLoadedStates(
        failureOrSuccess: left(const AuthFailure.cancelledByUser()),
      ),
      verify: (_) => verifyCallignSignInWithGoogle,
    );

    blocTest(
      'should emit Loading and Failure state when server error',
      build: () => _mockNoParamFunctionAndBuild(
          call: mockIAuthFacade.signInWithGoogle,
          failureOrSuccess: left(const AuthFailure.serverSerror())),
      act: actFunction,
      expect: () => _loadingAndLoadedStates(
        failureOrSuccess: left(const AuthFailure.serverSerror()),
      ),
      verify: (_) => verifyCallignSignInWithGoogle,
    );
  });

  group('Register with email and password pressed', () {
    dynamic registerWithEmailAndPassword(SignInFormBloc bloc) =>
        bloc.add((const SignInFormEvent.registerWithEmailAndPasswordPressed()));
    blocTest(
        'should emit a successful state when successfully registered with email and password',
        build: () => _mockActionOnEmailAndPasswordAndBuild(
            call: mockIAuthFacade.registerWithEmailAndPassword,
            emailAddress: correctEmail,
            password: correctPassword,
            failureOrSuccess: right(unit)),
        seed: () => SignInFormState.initial()
            .copyWith(emailAddress: correctEmail, password: correctPassword),
        act: registerWithEmailAndPassword,
        expect: () => [
              SignInFormState.initial().copyWith(
                  emailAddress: correctEmail,
                  password: correctPassword,
                  isSubmitting: true),
              SignInFormState.initial().copyWith(
                  emailAddress: correctEmail,
                  password: correctPassword,
                  isSubmitting: false,
                  authFailureOrSuccessOption: some(right(unit))),
            ]);

    blocTest(
        'should emit error messages state when incorrect email is inputted',
        build: () => SignInFormBloc(mockIAuthFacade),
        seed: () => SignInFormState.initial()
            .copyWith(emailAddress: incorrectEmail, password: correctPassword),
        act: registerWithEmailAndPassword,
        expect: () => [
              SignInFormState.initial().copyWith(
                  emailAddress: incorrectEmail,
                  password: correctPassword,
                  showErrorMessages: AutovalidateMode.always),
            ]);

    blocTest(
        'should emit error messages state when incorrect password is inputted',
        build: () => SignInFormBloc(mockIAuthFacade),
        seed: () => SignInFormState.initial()
            .copyWith(emailAddress: correctEmail, password: incorrectPassword),
        act: registerWithEmailAndPassword,
        expect: () => [
              SignInFormState.initial().copyWith(
                  emailAddress: correctEmail,
                  password: incorrectPassword,
                  showErrorMessages: AutovalidateMode.always),
            ]);
    blocTest(
      'should verify no registerWithEmailAndPassword call when incorrect passowrd is inputted',
      build: () => SignInFormBloc(mockIAuthFacade),
      seed: () => SignInFormState.initial()
          .copyWith(emailAddress: correctEmail, password: incorrectPassword),
      act: registerWithEmailAndPassword,
      verify: (_) => verifyZeroInteractions(mockIAuthFacade),
    );
  });

  group('Sign in with email and password pressed', () {
    dynamic signInWithEmailAndPassword(SignInFormBloc bloc) =>
        bloc.add((const SignInFormEvent.signInWithEmailAndPasswordPressed()));

    blocTest(
        'should emit a successful state when successfully signed in with email and password',
        build: () => _mockActionOnEmailAndPasswordAndBuild(
            call: mockIAuthFacade.signInWithEmailAndPassword,
            emailAddress: correctEmail,
            password: correctPassword,
            failureOrSuccess: right(unit)),
        seed: () => SignInFormState.initial()
            .copyWith(emailAddress: correctEmail, password: correctPassword),
        act: signInWithEmailAndPassword,
        expect: () => [
              SignInFormState.initial().copyWith(
                  emailAddress: correctEmail,
                  password: correctPassword,
                  isSubmitting: true),
              SignInFormState.initial().copyWith(
                  emailAddress: correctEmail,
                  password: correctPassword,
                  isSubmitting: false,
                  authFailureOrSuccessOption: some(right(unit))),
            ]);

    blocTest(
        'should emit error messages state when incorrect email is inputted',
        build: () => SignInFormBloc(mockIAuthFacade),
        seed: () => SignInFormState.initial()
            .copyWith(emailAddress: incorrectEmail, password: correctPassword),
        act: signInWithEmailAndPassword,
        expect: () => [
              SignInFormState.initial().copyWith(
                  emailAddress: incorrectEmail,
                  password: correctPassword,
                  showErrorMessages: AutovalidateMode.always),
            ]);

    blocTest(
        'should emit error messages state when incorrect password is inputted',
        build: () => SignInFormBloc(mockIAuthFacade),
        seed: () => SignInFormState.initial()
            .copyWith(emailAddress: correctEmail, password: incorrectPassword),
        act: signInWithEmailAndPassword,
        expect: () => [
              SignInFormState.initial().copyWith(
                  emailAddress: correctEmail,
                  password: incorrectPassword,
                  showErrorMessages: AutovalidateMode.always),
            ]);
    blocTest(
      'should verify no registerWithEmailAndPassword call when incorrect passowrd is inputted',
      build: () => SignInFormBloc(mockIAuthFacade),
      seed: () => SignInFormState.initial()
          .copyWith(emailAddress: correctEmail, password: incorrectPassword),
      act: signInWithEmailAndPassword,
      verify: (_) => verifyZeroInteractions(mockIAuthFacade),
    );
  });
}
