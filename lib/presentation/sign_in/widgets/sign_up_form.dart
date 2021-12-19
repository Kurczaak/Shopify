import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:shopify_client/presentation/sign_in/widgets/google_sign_in_button.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final nameController = TextEditingController();

  final TextFormField xd = TextFormField(
    key: UniqueKey(),
    autofillHints: const <String>[
      AutofillHints.givenName,
      AutofillHints.familyName
    ],
    autocorrect: false,
    keyboardType: TextInputType.emailAddress,
    decoration: const InputDecoration(
      // contentPadding:
      //     EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      labelText: 'name',
    ),
    //onChanged: (value) {},
    //validator: (_) {},
  );

  @override
  Widget build(BuildContext context) {
    final buttonResponsiveValue = ResponsiveValue(
      context,
      defaultValue: 60.0,
      valueWhen: const [
        Condition.smallerThan(name: TABLET, value: 40.0),
        Condition.equals(name: TABLET, value: 50.0),
      ],
    );
    return Form(
      child: Center(
        child: AutofillGroup(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            children: [
              TextFormField(
                controller: nameController,
                autofillHints: const <String>[AutofillHints.name],
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  labelText: 'name and surname',
                ),
                onChanged: (value) {},
                validator: (_) {},
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                autofillHints: const [
                  AutofillHints.email,
                ],
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  labelText: 'e-mail adress',
                ),
                //autocorrect: false,
                onChanged: (value) {},
                validator: (_) {},
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                  labelText: 'password',
                ),
                autocorrect: false,
                onChanged: (value) {},
                validator: (_) {},
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: buttonResponsiveValue.value,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FittedBox(
                        child: Text(
                      'Register Now',
                      style: TextStyle(fontSize: 30),
                    )),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: buttonResponsiveValue.value,
                child: GoogleSignInButton(
                  onPressed: () {},
                  text: 'Sign up with Google',
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? '),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
