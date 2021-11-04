import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:shopify_client/domain/auth/auth_failure.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/domain/auth/value_objects.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'sign_in_form_bloc_test.mocks.dart';
import 'package:bloc_test/bloc_test.dart';

@GenerateMocks([IAuthFacade])
void main() {
  MockIAuthFacade mockIAuthFacade = MockIAuthFacade();
  SignInFormBloc signInFormBloc = SignInFormBloc(mockIAuthFacade);

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

  SignInFormBloc _mockAndBuild({
    required Future<Either<AuthFailure, Unit>> Function() call,
    required Either<AuthFailure, Unit> failureOrSuccess,
  }) {
    when(call()).thenAnswer((_) async => failureOrSuccess);
    return SignInFormBloc(mockIAuthFacade);
  }

  group('Email changed', () {
    const correctEmailStr = 'correct@email.com';
    const incorrectEmailStr = 'incorrectemail.com';

    blocTest(
      'should emit a state with correct email address',
      build: () {
        return SignInFormBloc(mockIAuthFacade);
      },
      act: (SignInFormBloc bloc) =>
          bloc.add(const SignInFormEvent.emailChanged(correctEmailStr)),
      expect: () {
        return [
          SignInFormState.initial()
              .copyWith(emailAddress: EmailAddress(correctEmailStr))
        ];
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
          SignInFormState.initial()
              .copyWith(emailAddress: EmailAddress(incorrectEmailStr))
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
          SignInFormState.initial()
              .copyWith(emailAddress: EmailAddress(incorrectEmailStr))
        ];
      },
    );
  });

  group('Password changed', () {
    const correctPasswordStr = '123ABcd!@#';
    const incorrectPasswordStr = 'abcde';

    blocTest(
      'should emit a state with correct email address',
      build: () {
        return SignInFormBloc(mockIAuthFacade);
      },
      act: (SignInFormBloc bloc) =>
          bloc.add(const SignInFormEvent.emailChanged(correctPasswordStr)),
      expect: () {
        return [
          SignInFormState.initial()
              .copyWith(emailAddress: EmailAddress(correctPasswordStr))
        ];
      },
    );

    blocTest(
      'should emit a state with incorrect email address',
      build: () {
        return SignInFormBloc(mockIAuthFacade);
      },
      act: (SignInFormBloc bloc) =>
          bloc.add(const SignInFormEvent.emailChanged(incorrectPasswordStr)),
      expect: () {
        return [
          SignInFormState.initial()
              .copyWith(emailAddress: EmailAddress(incorrectPasswordStr))
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
          bloc.add(const SignInFormEvent.emailChanged(incorrectPasswordStr)),
      expect: () {
        return [
          SignInFormState.initial()
              .copyWith(emailAddress: EmailAddress(incorrectPasswordStr))
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

    dynamic verifyCallignSignInWithGoogle(_) =>
        mockIAuthFacade.signInWithGoogle();

    blocTest(
      'should emit Loading and Loaded state when successful',
      build: () => _mockAndBuild(
          call: mockIAuthFacade.signInWithGoogle,
          failureOrSuccess: right(unit)),
      act: actFunction,
      expect: () => _loadingAndLoadedStates(failureOrSuccess: right(unit)),
      verify: (_) => verifyCallignSignInWithGoogle,
    );

    blocTest(
      'should emit Loading and Failure state when cancelled by user',
      build: () => _mockAndBuild(
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
      build: () => _mockAndBuild(
          call: mockIAuthFacade.signInWithGoogle,
          failureOrSuccess: left(const AuthFailure.serverSerror())),
      act: actFunction,
      expect: () => _loadingAndLoadedStates(
        failureOrSuccess: left(const AuthFailure.serverSerror()),
      ),
      verify: (_) => verifyCallignSignInWithGoogle,
    );
  });
}
