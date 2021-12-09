import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:another_flushbar/flushbar_helper.dart';

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
                                  'Invalid email and password combination'))
                      .show(context);
                }, (_) {}));
      },
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topLeft,
              repeat: ImageRepeat.noRepeat,
              image: AssetImage('images/corner_shape.png'),
              fit: BoxFit.scaleDown,
              matchTextDirection: false,
            ),
            shape: BoxShape.rectangle,
          ),
          child: Form(
            autovalidateMode: state.showErrorMessages,
            child: Center(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    'Welcome Back!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Image.asset('images/undraw_gone_shopping.png'),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      labelText: 'Enter your password',
                    ),
                    autocorrect: false,
                    onChanged: (value) => context.read<SignInFormBloc>().add(
                          SignInFormEvent.passwordChanged(value),
                        ),
                    validator: (_) => context
                        .read<SignInFormBloc>()
                        .state
                        .password
                        .value
                        .fold(
                          (f) => f.maybeMap(
                              incorrectPassword: (_) => 'Invalid Password',
                              orElse: () => null),
                          (r) => null,
                        ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password'),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed(),
                            );
                      },
                      child: const Text('LOG IN'),
                    ),
                  ),
                  const Divider(),
                  SignInButton(
                    Buttons.Google,
                    padding: const EdgeInsets.all(10),
                    text: "Sign in with Google",
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                            const SignInFormEvent.signInWithGooglePressed(),
                          );
                    },
                  ),
                  Row(
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
          ),
        );
      },
    );
  }
}
