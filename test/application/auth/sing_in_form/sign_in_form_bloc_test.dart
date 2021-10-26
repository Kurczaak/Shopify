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

  /// Function used for sending mocked Auth Facade calls, mocking its answers
  /// and checking if bloc states are accordingly emitted
  /// [mockSubmitFunction] is a mock function form the AuthFacade interface
  /// [expectedAnswer] is the mocked function's expected answer
  /// [event] is the BLoC event we want to dispatch
  void _mockSubmitAndVerify({
    required Future<Either<AuthFailure, Unit>> Function() mockSubmitFunction,
    required Either<AuthFailure, Unit> expectedAnswer,
    required SignInFormEvent event,
  }) {
    //arrange
    when(mockSubmitFunction()).thenAnswer((_) async => expectedAnswer);

    final submittingState = bloc.state.copyWith(isSubmitting: true);
    final unsuccessfulState = submittingState.copyWith(
        isSubmitting: false, authFailureOrSuccessOption: some(expectedAnswer));

    final expectedOrder = [submittingState, unsuccessfulState];
    // act
    expectLater(
      bloc.stream.asBroadcastStream(),
      emitsInOrder(expectedOrder),
    );
    // assert
    bloc.add(event);
  }

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
        _mockSubmitAndVerify(
          mockSubmitFunction: iAuthFacadeMock.signInWithGoogle,
          event: const SignInFormEvent.signInWithGooglePressed(),
          expectedAnswer: right(unit),
        );
      },
    );

    test(
      'should emit submitting state, and then after a user taps out emit a failure state ',
      () async {
        // arrange
        _mockSubmitAndVerify(
          mockSubmitFunction: iAuthFacadeMock.signInWithGoogle,
          event: const SignInFormEvent.signInWithGooglePressed(),
          expectedAnswer: left(const AuthFailure.cancelledByUser()),
        );
      },
    );

    test(
      'should emit submitting state, and after a server failure emit a failure state ',
      () async {
        // arrange
        _mockSubmitAndVerify(
          mockSubmitFunction: iAuthFacadeMock.signInWithGoogle,
          event: const SignInFormEvent.signInWithGooglePressed(),
          expectedAnswer: left(const AuthFailure.serverSerror()),
        );
      },
    );
  });

  group('register with email and password', () {
    const String emailStr = 'correct@email.com';
    const String passwordStr = '12CorrecT@#';
    test(
      'should call the iAuthFacade to register with email and password',
      () async {
        // arrange

        when(iAuthFacadeMock.registerWithEmailAndPassword(
                emailAddress: EmailAddress(emailStr),
                password: Password(passwordStr)))
            .thenAnswer((realInvocation) async => right(unit));
        // act
        bloc.add(const SignInFormEvent.registerWithEmailAndPasswordPressed(
            emailStr, passwordStr));
        await untilCalled(iAuthFacadeMock.registerWithEmailAndPassword(
            emailAddress: EmailAddress(emailStr),
            password: Password(passwordStr)));
        // assert
        verify(iAuthFacadeMock.registerWithEmailAndPassword(
            emailAddress: EmailAddress(emailStr),
            password: Password(passwordStr)));
      },
    );

    test(
      'should emit loading state and successful state after the call',
      () async {
        // arrange
        final mockedCall = () async =>
            iAuthFacadeMock.registerWithEmailAndPassword(
                emailAddress: EmailAddress(emailStr),
                password: Password(passwordStr));
        _mockSubmitAndVerify(
          mockSubmitFunction: mockedCall,
          expectedAnswer: right(unit),
          event: const SignInFormEvent.registerWithEmailAndPasswordPressed(
              emailStr, passwordStr),
        );
        // act

        // assert
      },
    );
  });
}
