// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../core/debug_page.dart' as _i1;
import '../register_shop/debug_location_page.dart' as _i3;
import '../register_shop/opening_hours/opening_hours_page.dart' as _i7;
import '../register_shop/shop_form/shop_form_page.dart' as _i5;
import '../sign_in/sign_in_page.dart' as _i4;
import '../sign_in/sign_up_page.dart' as _i6;
import '../splash/splash_page.dart' as _i2;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    DebugRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DebugPage());
    },
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    DebugLocationRoute.name: (routeData) {
      final args = routeData.argsAs<DebugLocationRouteArgs>(
          orElse: () => const DebugLocationRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.DebugLocationPage(key: args.key));
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignInPage());
    },
    ShopDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ShopDetailsRouteArgs>(
          orElse: () => const ShopDetailsRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.ShopFormPage(key: args.key));
    },
    SignUpRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SignUpPage());
    },
    OpeningHoursRoute.name: (routeData) {
      final args = routeData.argsAs<OpeningHoursRouteArgs>(
          orElse: () => const OpeningHoursRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.OpeningHoursPage(key: args.key));
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(DebugRoute.name, path: '/debug-page'),
        _i8.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i8.RouteConfig(DebugLocationRoute.name, path: '/debug-location-page'),
        _i8.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i8.RouteConfig(ShopDetailsRoute.name, path: '/'),
        _i8.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i8.RouteConfig(OpeningHoursRoute.name, path: '/opening-hours-page')
      ];
}

/// generated route for
/// [_i1.DebugPage]
class DebugRoute extends _i8.PageRouteInfo<void> {
  const DebugRoute() : super(DebugRoute.name, path: '/debug-page');

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.DebugLocationPage]
class DebugLocationRoute extends _i8.PageRouteInfo<DebugLocationRouteArgs> {
  DebugLocationRoute({_i9.Key? key})
      : super(DebugLocationRoute.name,
            path: '/debug-location-page',
            args: DebugLocationRouteArgs(key: key));

  static const String name = 'DebugLocationRoute';
}

class DebugLocationRouteArgs {
  const DebugLocationRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'DebugLocationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i5.ShopFormPage]
class ShopDetailsRoute extends _i8.PageRouteInfo<ShopDetailsRouteArgs> {
  ShopDetailsRoute({_i9.Key? key})
      : super(ShopDetailsRoute.name,
            path: '/', args: ShopDetailsRouteArgs(key: key));

  static const String name = 'ShopDetailsRoute';
}

class ShopDetailsRouteArgs {
  const ShopDetailsRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'ShopDetailsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i7.OpeningHoursPage]
class OpeningHoursRoute extends _i8.PageRouteInfo<OpeningHoursRouteArgs> {
  OpeningHoursRoute({_i9.Key? key})
      : super(OpeningHoursRoute.name,
            path: '/opening-hours-page', args: OpeningHoursRouteArgs(key: key));

  static const String name = 'OpeningHoursRoute';
}

class OpeningHoursRouteArgs {
  const OpeningHoursRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'OpeningHoursRouteArgs{key: $key}';
  }
}
