import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/application/auth/auth_bloc.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/auth.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormState get initialState => SignInFormState.initial();

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) {
          emit(state.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        passwordChanged: (e) {
          emit(state.copyWith(
            password: Password(e.passwordStr),
            authFailureOrSuccessOption: none(),
          ));
        },
        registerWithEmailAndPasswordPressed: (e) {
          _performActionOnAuthFacadeWithEmailAndPassword(
              _authFacade.registerWithEmailAndPassword);
          getIt<AuthBloc>().add(const AuthEvent.authCheckRequested());
        },
        signInWithEmailAndPasswordPressed: (e) {
          _performActionOnAuthFacadeWithEmailAndPassword(
              _authFacade.signInWithEmailAndPassword);
          getIt<AuthBloc>().add(const AuthEvent.authCheckRequested());
        },
        signInWithGooglePressed: (e) async {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ));
          final failureOrUnit = await _authFacade.signInWithGoogle();
          emit.isDone;
          emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrUnit),
          ));
          failureOrUnit.fold(
              (_) => null,
              (_) =>
                  getIt<AuthBloc>().add(const AuthEvent.authCheckRequested()));
        },
      );
    });
  }

  void _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {required EmailAddress emailAddress, required Password password})
          forwardedCall) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      // ignore: invalid_use_of_visible_for_testing_member
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      final valueOrFailure = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );

      // ignore: invalid_use_of_visible_for_testing_member
      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(valueOrFailure),
      ));
    } else {
      // ignore: invalid_use_of_visible_for_testing_member
      emit(state.copyWith(
        showErrorMessages: AutovalidateMode.always,
        authFailureOrSuccessOption: none(),
      ));
    }
  }
}
