import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const GoogleSignInButton(
      {Key? key,
      required Function() this.onPressed,
      this.text = 'Sign in with Google'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFFFFFFFF),
      ),
      onPressed: onPressed,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Image(
            fit: BoxFit.fitHeight,
            image: AssetImage(
              'assets/logos/google_light.png',
              package: 'flutter_signin_button',
            ),
          ),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: const TextStyle(
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
