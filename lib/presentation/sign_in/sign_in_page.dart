import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: Container(
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
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                'Welcome Back!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Image.asset('images/undraw_gone_shopping.png'),
              const SizedBox(height: 40),
              const Expanded(child: SingleChildScrollView(child: SignInForm())),
            ],
          ),
        ),
      ),
    );
  }
}
