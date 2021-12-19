// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../core/debug_page.dart' as _i1;
import '../home_page.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i3;
import '../sign_in/sign_up_page.dart' as _i5;
import '../splash/splash_page.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DebugRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DebugPage());
    },
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    SignUpRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SignUpPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(DebugRoute.name, path: '/debug-page'),
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i6.RouteConfig(SignUpRoute.name, path: '/sign-up-page')
      ];
}

/// generated route for
/// [_i1.DebugPage]
class DebugRoute extends _i6.PageRouteInfo<void> {
  const DebugRoute() : super(DebugRoute.name, path: '/debug-page');

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.SignUpPage]
class SignUpRoute extends _i6.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}
