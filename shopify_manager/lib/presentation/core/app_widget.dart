import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/application/auth/auth_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = getIt<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
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
            titleLarge: TextStyle(fontWeight: FontWeight.bold),
            headlineLarge: TextStyle(fontWeight: FontWeight.bold),
          ).apply(
            bodyColor: LightThemeColors.primaryDarkColor,
            displayColor: LightThemeColors.primaryDarkColor,
            fontFamily: 'Poppins',
            //decorationColor: LightThemeColors.primaryDarkColor,
          ),
          backgroundColor: LightThemeColors.background,
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            background: LightThemeColors.background,
            onBackground: LightThemeColors.primaryDarkColor,
            primary: LightThemeColors.primary,
            onPrimary: LightThemeColors.iconsColor,
            secondary: LightThemeColors.accentColor,
            onSecondary: LightThemeColors.iconsColor,
            error: LightThemeColors.errorColor,
            onError: LightThemeColors.iconsColor,
            surface: LightThemeColors.iconsColor,
            onSurface: LightThemeColors.secondaryDarkColor.withOpacity(.5),
            outline: LightThemeColors.primaryDarkColor,
            inversePrimary: LightThemeColors.disabledColor,
          ),
          brightness: Brightness.light,
          fontFamily: 'Poppins',
          primarySwatch: MaterialColor(0xFF337331, color),
          iconTheme: const IconThemeData(
            color: LightThemeColors.iconsColor,
            opacity: 1,
            size: 30,
          ),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
            textStyle:
                const TextStyle(color: LightThemeColors.primaryDarkColor),
          )),
          primaryTextTheme: const TextTheme().apply(
            bodyColor: LightThemeColors.primaryDarkColor,
            displayColor: LightThemeColors.primaryDarkColor,
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              textStyle:
                  const TextStyle(color: LightThemeColors.primaryDarkColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(5),
              side: const BorderSide(
                width: 1,
                color: LightThemeColors.primaryDarkColor,
              ),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(
                color: LightThemeColors.primaryDarkColor,
                width: 1,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(
                color: LightThemeColors.primaryDarkColor,
                width: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LightThemeColors {
  static const Color primary = Color(0xFF337331);
  static const Color background = Color.fromARGB(255, 231, 231, 231);
  static const Color iconsColor = Colors.white;
  static const Color primaryDarkColor = Color.fromARGB(255, 71, 71, 71);
  static const Color secondaryDarkColor = Color.fromRGBO(129, 129, 129, 1);
  static const Color errorColor = Color.fromRGBO(184, 52, 74, 1);
  static const Color accentColor = Color.fromRGBO(0, 112, 193, 1);
  static const Color disabledColor = Color(0xFFA2AF9F);
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
