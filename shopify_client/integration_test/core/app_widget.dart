import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../lib/presentation/routes/router.gr.dart';

Widget createWidgetUnderTest() {
  final _appRouter = AppRouter();

  return MaterialApp.router(
    routerDelegate: _appRouter.delegate(),
    routeInformationParser: _appRouter.defaultRouteParser(),
    builder: (context, widget) => ResponsiveWrapper.builder(
      ClampingScrollWrapper.builder(context, widget!),
      breakpoints: const [
        ResponsiveBreakpoint.resize(480, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ResponsiveBreakpoint.autoScale(2460, name: '4K'),
      ],
    ),
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      textTheme: const TextTheme(
        bodyText1: TextStyle(),
        bodyText2: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ).apply(
        bodyColor: const Color.fromRGBO(73, 72, 72, 1),
        displayColor: const Color.fromRGBO(73, 72, 72, 1),
      ),
      backgroundColor: const Color(0x00F4F5F7),
      secondaryHeaderColor: const Color.fromRGBO(81, 81, 81, 1),
      brightness: Brightness.light,
      fontFamily: 'Poppins',
      primarySwatch: MaterialColor(0xFF337331, color),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            color: Color(0x00818181),
            width: 2,
          ),
        ),
      ),
    ),
  );
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
