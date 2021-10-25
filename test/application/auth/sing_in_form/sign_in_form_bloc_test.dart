import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:shopify_client/domain/auth/auth_failure.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/domain/auth/value_objects.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'sign_in_form_bloc_test.mocks.dart';

@GenerateMocks([IAuthFacade])
void main() {
  MockIAuthFacade iAuthFacadeMock = MockIAuthFacade();
  SignInFormBloc bloc = SignInFormBloc(iAuthFacadeMock);
  test(
    'Initialy BLoC should contain an initial state',
    () async {
      // arrange
      final initialState = SignInFormState.initial();
      // assert
      expect(bloc.state, equals(initialState));
    },
  );

  group('emailChanged Event', () {
    const tEmailStr = 'correct@email.com';
    test(
      'should return a new state with updated email and none() as the authFailureOrSuccessOption',
      () async {
        // assert later

        final expectedState = SignInFormState.initial().copyWith(
            emailAddress: EmailAddress(tEmailStr),
            authFailureOrSuccessOption: none());

        expectLater(bloc.stream.asBroadcastStream(), emits(expectedState));
        //act
        bloc.add(const SignInFormEvent.emailChanged(tEmailStr));
      },
    );
  });

  group('passwordChanged Event', () {
    const tPasswordStr = '12Correct#@';
    test(
      'should return a new state with updated password and none() as the authFailureOrSuccessOption',
      () async {
        // assert later

        final expectedState = bloc.state.copyWith(
            password: Password(tPasswordStr),
            authFailureOrSuccessOption: none());

        expectLater(bloc.stream.asBroadcastStream(), emits(expectedState));
        //act
        bloc.add(const SignInFormEvent.passwordChanged(tPasswordStr));
      },
    );
  });

  group('signInWithGooglePressed Event', () {
    test(
      'should verify if the iAuthFacade signInWIthGoogle method has been called',
      () async {
        // arrange
        when(iAuthFacadeMock.signInWithGoogle())
            .thenAnswer((_) async => right(unit));
        // act
        bloc.add(const SignInFormEvent.signInWithGooglePressed());
        await untilCalled(iAuthFacadeMock.signInWithGoogle());
        // assert
        verify(iAuthFacadeMock.signInWithGoogle());
      },
    );
    test(
      'should emit submitting state, and then after a successful login emit a successState ',
      () async {
        // arrange
        when(iAuthFacadeMock.signInWithGoogle())
            .thenAnswer((_) async => right(unit));
        final submittingState = bloc.state.copyWith(isSubmitting: true);
        final successState = submittingState.copyWith(
            isSubmitting: false, authFailureOrSuccessOption: some(right(unit)));

        final expectedOrder = [submittingState, successState];
        // act
        expectLater(
          bloc.stream.asBroadcastStream(),
          emitsInOrder(expectedOrder),
        );
        // assert
        bloc.add(const SignInFormEvent.signInWithGooglePressed());
      },
    );

    test(
      'should emit submitting state, and then after a user taps out emit a failure state ',
      () async {
        // arrange
        when(iAuthFacadeMock.signInWithGoogle())
            .thenAnswer((_) async => left(const AuthFailure.cancelledByUser()));
        final submittingState = bloc.state.copyWith(isSubmitting: true);
        final unsuccessfulState = submittingState.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption:
                some(left(const AuthFailure.cancelledByUser())));

        final expectedOrder = [submittingState, unsuccessfulState];
        // act
        expectLater(
          bloc.stream.asBroadcastStream(),
          emitsInOrder(expectedOrder),
        );
        // assert
        bloc.add(const SignInFormEvent.signInWithGooglePressed());
      },
    );

    test(
      'should emit submitting state, and after a server failure emit a failure state ',
      () async {
        // arrange
        when(iAuthFacadeMock.signInWithGoogle())
            .thenAnswer((_) async => left(const AuthFailure.serverSerror()));
        final submittingState = bloc.state.copyWith(isSubmitting: true);
        final unsuccessfulState = submittingState.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption:
                some(left(const AuthFailure.serverSerror())));

        final expectedOrder = [submittingState, unsuccessfulState];
        // act
        expectLater(
          bloc.stream.asBroadcastStream(),
          emitsInOrder(expectedOrder),
        );
        // assert
        bloc.add(const SignInFormEvent.signInWithGooglePressed());
      },
    );
  });
}
