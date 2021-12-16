import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:shopify_client/presentation/sign_in/widgets/google_sign_in_button.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                        cancelledByUser: (_) => 'Cancelled',
                        serverSerror: (_) => 'Server error',
                        emailAlreadyInUse: (_) => 'Email already in use',
                        invalidEmailAndPasswordCombination: (_) =>
                            'Invalid email and password combination'),
                  ).show(context);
                }, (_) {}));
      },
      builder: (context, state) {
        final buttonResponsiveValue = ResponsiveValue(
          context,
          defaultValue: 60.0,
          valueWhen: const [
            Condition.smallerThan(name: TABLET, value: 40.0),
            Condition.equals(name: TABLET, value: 50.0),
          ],
        );
        return Form(
          autovalidateMode: state.showErrorMessages,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    labelText: 'Enter your email',
                  ),
                  autocorrect: false,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                        SignInFormEvent.emailChanged(value),
                      ),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid Email',
                            orElse: () => null),
                        (r) => null,
                      ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                    labelText: 'Enter your password',
                  ),
                  autocorrect: false,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                        SignInFormEvent.passwordChanged(value),
                      ),
                  validator: (_) =>
                      context.read<SignInFormBloc>().state.password.value.fold(
                            (f) => f.maybeMap(
                                incorrectPassword: (_) => 'Invalid Password',
                                orElse: () => null),
                            (r) => null,
                          ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot Password?'),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: buttonResponsiveValue.value,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                            const SignInFormEvent
                                .signInWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FittedBox(
                          child: Text(
                        'Log In',
                        style: TextStyle(fontSize: 30),
                      )),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: buttonResponsiveValue.value,
                  child: GoogleSignInButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                            const SignInFormEvent.signInWithGooglePressed(),
                          );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account? '),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
