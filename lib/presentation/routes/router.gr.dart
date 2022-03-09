// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../core/debug_page.dart' as _i9;
import '../debug/registration_wrapping_page.dart' as _i4;
import '../register_shop/debug_location_page.dart' as _i6;
import '../register_shop/opening_hours/opening_hours_page.dart' as _i7;
import '../register_shop/shop_form/shop_form_page.dart' as _i5;
import '../registration_recap_page.dart' as _i8;
import '../sign_in/sign_in_page.dart' as _i2;
import '../sign_in/sign_up_page.dart' as _i3;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    RegistrationWrappingRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegistrationWrappingPage());
    },
    ShopFormRoute.name: (routeData) {
      final args = routeData.argsAs<ShopFormRouteArgs>(
          orElse: () => const ShopFormRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.ShopFormPage(key: args.key));
    },
    DebugLocationRoute.name: (routeData) {
      final args = routeData.argsAs<DebugLocationRouteArgs>(
          orElse: () => const DebugLocationRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.DebugLocationPage(key: args.key));
    },
    OpeningHoursRoute.name: (routeData) {
      final args = routeData.argsAs<OpeningHoursRouteArgs>(
          orElse: () => const OpeningHoursRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.OpeningHoursPage(key: args.key));
    },
    RegistrationRecapRoute.name: (routeData) {
      final args = routeData.argsAs<RegistrationRecapRouteArgs>(
          orElse: () => const RegistrationRecapRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.RegistrationRecapPage(key: args.key));
    },
    DebugRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.DebugPage());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i10.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i10.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i10.RouteConfig(RegistrationWrappingRoute.name, path: '/', children: [
          _i10.RouteConfig(ShopFormRoute.name,
              path: '', parent: RegistrationWrappingRoute.name),
          _i10.RouteConfig(DebugLocationRoute.name,
              path: 'debug-location-page',
              parent: RegistrationWrappingRoute.name),
          _i10.RouteConfig(OpeningHoursRoute.name,
              path: 'opening-hours-page',
              parent: RegistrationWrappingRoute.name),
          _i10.RouteConfig(RegistrationRecapRoute.name,
              path: 'registration-recap-page',
              parent: RegistrationWrappingRoute.name),
          _i10.RouteConfig(DebugRoute.name,
              path: 'debug-page', parent: RegistrationWrappingRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i10.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i10.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.RegistrationWrappingPage]
class RegistrationWrappingRoute extends _i10.PageRouteInfo<void> {
  const RegistrationWrappingRoute({List<_i10.PageRouteInfo>? children})
      : super(RegistrationWrappingRoute.name,
            path: '/', initialChildren: children);

  static const String name = 'RegistrationWrappingRoute';
}

/// generated route for
/// [_i5.ShopFormPage]
class ShopFormRoute extends _i10.PageRouteInfo<ShopFormRouteArgs> {
  ShopFormRoute({_i11.Key? key})
      : super(ShopFormRoute.name, path: '', args: ShopFormRouteArgs(key: key));

  static const String name = 'ShopFormRoute';
}

class ShopFormRouteArgs {
  const ShopFormRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'ShopFormRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.DebugLocationPage]
class DebugLocationRoute extends _i10.PageRouteInfo<DebugLocationRouteArgs> {
  DebugLocationRoute({_i11.Key? key})
      : super(DebugLocationRoute.name,
            path: 'debug-location-page',
            args: DebugLocationRouteArgs(key: key));

  static const String name = 'DebugLocationRoute';
}

class DebugLocationRouteArgs {
  const DebugLocationRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'DebugLocationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.OpeningHoursPage]
class OpeningHoursRoute extends _i10.PageRouteInfo<OpeningHoursRouteArgs> {
  OpeningHoursRoute({_i11.Key? key})
      : super(OpeningHoursRoute.name,
            path: 'opening-hours-page', args: OpeningHoursRouteArgs(key: key));

  static const String name = 'OpeningHoursRoute';
}

class OpeningHoursRouteArgs {
  const OpeningHoursRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'OpeningHoursRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.RegistrationRecapPage]
class RegistrationRecapRoute
    extends _i10.PageRouteInfo<RegistrationRecapRouteArgs> {
  RegistrationRecapRoute({_i11.Key? key})
      : super(RegistrationRecapRoute.name,
            path: 'registration-recap-page',
            args: RegistrationRecapRouteArgs(key: key));

  static const String name = 'RegistrationRecapRoute';
}

class RegistrationRecapRouteArgs {
  const RegistrationRecapRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'RegistrationRecapRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.DebugPage]
class DebugRoute extends _i10.PageRouteInfo<void> {
  const DebugRoute() : super(DebugRoute.name, path: 'debug-page');

  static const String name = 'DebugRoute';
}
