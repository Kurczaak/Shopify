import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFFFFFFFF),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Image(
            fit: BoxFit.fitHeight,
            image: AssetImage(
              'assets/logos/google_light.png',
              package: 'flutter_signin_button',
            ),
          ),
          FittedBox(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.54),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
