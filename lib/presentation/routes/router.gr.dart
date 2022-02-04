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

import '../core/debug_page.dart' as _i1;
import '../register_shop/opening_hours_page.dart' as _i6;
import '../register_shop/shop_details_page.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i3;
import '../sign_in/sign_up_page.dart' as _i5;
import '../splash/splash_page.dart' as _i2;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    DebugRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DebugPage());
    },
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    ShopDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ShopDetailsRouteArgs>(
          orElse: () => const ShopDetailsRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.ShopDetailsPage(key: args.key));
    },
    SignUpRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SignUpPage());
    },
    OpeningHoursRoute.name: (routeData) {
      final args = routeData.argsAs<OpeningHoursRouteArgs>(
          orElse: () => const OpeningHoursRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.OpeningHoursPage(key: args.key));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(DebugRoute.name, path: '/debug-page'),
        _i7.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i7.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i7.RouteConfig(ShopDetailsRoute.name, path: '/shop-details-page'),
        _i7.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i7.RouteConfig(OpeningHoursRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.DebugPage]
class DebugRoute extends _i7.PageRouteInfo<void> {
  const DebugRoute() : super(DebugRoute.name, path: '/debug-page');

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.ShopDetailsPage]
class ShopDetailsRoute extends _i7.PageRouteInfo<ShopDetailsRouteArgs> {
  ShopDetailsRoute({_i8.Key? key})
      : super(ShopDetailsRoute.name,
            path: '/shop-details-page', args: ShopDetailsRouteArgs(key: key));

  static const String name = 'ShopDetailsRoute';
}

class ShopDetailsRouteArgs {
  const ShopDetailsRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'ShopDetailsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.SignUpPage]
class SignUpRoute extends _i7.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i6.OpeningHoursPage]
class OpeningHoursRoute extends _i7.PageRouteInfo<OpeningHoursRouteArgs> {
  OpeningHoursRoute({_i8.Key? key})
      : super(OpeningHoursRoute.name,
            path: '/', args: OpeningHoursRouteArgs(key: key));

  static const String name = 'OpeningHoursRoute';
}

class OpeningHoursRouteArgs {
  const OpeningHoursRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'OpeningHoursRouteArgs{key: $key}';
  }
}
