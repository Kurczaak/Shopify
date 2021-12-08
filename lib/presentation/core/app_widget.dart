import 'package:flutter/material.dart';
import 'package:shopify_client/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF337331, color),
      ),
      home: SignInPage(),
    );
  }
}

Map<int, Color> color = {
  50: const Color.fromRGBO(51, 115, 49, .1),
  100: const Color.fromRGBO(51, 115, 49, .2),
  200: const Color.fromRGBO(51, 115, 49, .3),
  300: const Color.fromRGBO(51, 115, 49, .4),
  400: const Color.fromRGBO(51, 115, 49, .5),
  500: const Color.fromRGBO(51, 115, 49, .6),
  600: const Color.fromRGBO(51, 115, 49, .7),
  700: const Color.fromRGBO(51, 115, 49, .8),
  800: const Color.fromRGBO(51, 115, 49, .9),
  900: const Color.fromRGBO(51, 115, 49, 1),
};
