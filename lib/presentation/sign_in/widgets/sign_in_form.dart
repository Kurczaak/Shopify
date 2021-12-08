import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {},
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        borderSide: BorderSide(
                          color: Color(0x00818181),
                          width: 2,
                        ),
                      ),
                    ),
                    autocorrect: false,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      labelText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        borderSide: BorderSide(
                          color: Color(0x00818181),
                          width: 2,
                        ),
                      ),
                    ),
                    autocorrect: false,
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password'),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('LOG IN'),
                    ),
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
