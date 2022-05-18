// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../core/debug_page.dart' as _i4;
import '../shop_picker_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i5;
import '../sign_in/sign_up_page.dart' as _i6;
import '../splash/splash_page.dart' as _i2;
import 'auth_wrapper.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthWrapperRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthWrapperPage());
    },
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    ShopPickerRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ShopPickerPage());
    },
    DebugRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DebugPage());
    },
    SignInRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SignInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SignUpPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(AuthWrapperRoute.name,
            path: '/auth-wrapper-page',
            children: [
              _i7.RouteConfig(ShopPickerRoute.name,
                  path: 'shop-picker-page', parent: AuthWrapperRoute.name),
              _i7.RouteConfig(DebugRoute.name,
                  path: 'debug-page', parent: AuthWrapperRoute.name),
              _i7.RouteConfig(SignInRoute.name,
                  path: 'sign-in-page', parent: AuthWrapperRoute.name),
              _i7.RouteConfig(SignUpRoute.name,
                  path: 'sign-up-page', parent: AuthWrapperRoute.name)
            ]),
        _i7.RouteConfig(SplashRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.AuthWrapperPage]
class AuthWrapperRoute extends _i7.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i7.PageRouteInfo>? children})
      : super(AuthWrapperRoute.name,
            path: '/auth-wrapper-page', initialChildren: children);

  static const String name = 'AuthWrapperRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.ShopPickerPage]
class ShopPickerRoute extends _i7.PageRouteInfo<void> {
  const ShopPickerRoute()
      : super(ShopPickerRoute.name, path: 'shop-picker-page');

  static const String name = 'ShopPickerRoute';
}

/// generated route for
/// [_i4.DebugPage]
class DebugRoute extends _i7.PageRouteInfo<void> {
  const DebugRoute() : super(DebugRoute.name, path: 'debug-page');

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i5.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: 'sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i7.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'sign-up-page');

  static const String name = 'SignUpRoute';
}
