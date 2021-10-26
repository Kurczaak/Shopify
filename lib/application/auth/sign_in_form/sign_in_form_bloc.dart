import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_client/domain/auth/auth_failure.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormState get initialState => SignInFormState.initial();

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());
  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
        );

        final valueOrFailure = await _authFacade.registerWithEmailAndPassword(
          emailAddress: EmailAddress(e.emailStr),
          password: Password(e.passwordStr),
        );

        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(valueOrFailure),
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {},
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
        );
        final valueOrFailure = await _authFacade.signInWithGoogle();

        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(valueOrFailure),
        );
      },
    );
  }
}
