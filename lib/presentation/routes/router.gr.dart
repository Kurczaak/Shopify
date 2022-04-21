// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../../domain/product/value_objects.dart' as _i15;
import '../debug_dashboard_page.dart' as _i5;
import '../debug_page.dart' as _i1;
import '../product/scanner/scanner_widget.dart' as _i6;
import '../register_shop/location_picker/location_picker_page.dart' as _i9;
import '../register_shop/logo_picker/logo_picker_page.dart' as _i11;
import '../register_shop/opening_hours/opening_hours_page.dart' as _i10;
import '../register_shop/recap/registration_recap_page.dart' as _i12;
import '../register_shop/registration_wrapping_page.dart' as _i7;
import '../register_shop/shop_form/shop_form_page.dart' as _i8;
import '../sign_in/sign_in_page.dart' as _i3;
import '../sign_in/sign_up_page.dart' as _i4;
import '../splash/splash_page.dart' as _i2;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    DebugRoute.name: (routeData) {
      final args = routeData.argsAs<DebugRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.DebugPage(key: args.key, barcode: args.barcode));
    },
    SplashRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUpPage());
    },
    DebugDashboardRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.DebugDashboardPage());
    },
    BarcodeScannerWidget.name: (routeData) {
      final args = routeData.argsAs<BarcodeScannerWidgetArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.BarcodeScannerWidget(
              key: args.key, onBarcodeDeteced: args.onBarcodeDeteced));
    },
    RegistrationWrappingRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RegistrationWrappingPage());
    },
    ShopFormRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ShopFormPage());
    },
    LocationPickerRoute.name: (routeData) {
      final args = routeData.argsAs<LocationPickerRouteArgs>(
          orElse: () => const LocationPickerRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.LocationPickerPage(key: args.key));
    },
    OpeningHoursRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.OpeningHoursPage());
    },
    LogoPickerRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.LogoPickerPage());
    },
    RegistrationRecapRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.RegistrationRecapPage());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(DebugRoute.name, path: '/debug-page'),
        _i13.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i13.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i13.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i13.RouteConfig(DebugDashboardRoute.name, path: '/'),
        _i13.RouteConfig(BarcodeScannerWidget.name,
            path: '/barcode-scanner-widget'),
        _i13.RouteConfig(RegistrationWrappingRoute.name,
            path: '/registration-wrapping-page',
            children: [
              _i13.RouteConfig(ShopFormRoute.name,
                  path: '', parent: RegistrationWrappingRoute.name),
              _i13.RouteConfig(LocationPickerRoute.name,
                  path: 'location-picker-page',
                  parent: RegistrationWrappingRoute.name),
              _i13.RouteConfig(OpeningHoursRoute.name,
                  path: 'opening-hours-page',
                  parent: RegistrationWrappingRoute.name),
              _i13.RouteConfig(LogoPickerRoute.name,
                  path: 'logo-picker-page',
                  parent: RegistrationWrappingRoute.name),
              _i13.RouteConfig(RegistrationRecapRoute.name,
                  path: 'registration-recap-page',
                  parent: RegistrationWrappingRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.DebugPage]
class DebugRoute extends _i13.PageRouteInfo<DebugRouteArgs> {
  DebugRoute({_i14.Key? key, required _i15.Barcode barcode})
      : super(DebugRoute.name,
            path: '/debug-page',
            args: DebugRouteArgs(key: key, barcode: barcode));

  static const String name = 'DebugRoute';
}

class DebugRouteArgs {
  const DebugRouteArgs({this.key, required this.barcode});

  final _i14.Key? key;

  final _i15.Barcode barcode;

  @override
  String toString() {
    return 'DebugRouteArgs{key: $key, barcode: $barcode}';
  }
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i13.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpRoute extends _i13.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i5.DebugDashboardPage]
class DebugDashboardRoute extends _i13.PageRouteInfo<void> {
  const DebugDashboardRoute() : super(DebugDashboardRoute.name, path: '/');

  static const String name = 'DebugDashboardRoute';
}

/// generated route for
/// [_i6.BarcodeScannerWidget]
class BarcodeScannerWidget
    extends _i13.PageRouteInfo<BarcodeScannerWidgetArgs> {
  BarcodeScannerWidget(
      {_i14.Key? key, required void Function(_i15.Barcode) onBarcodeDeteced})
      : super(BarcodeScannerWidget.name,
            path: '/barcode-scanner-widget',
            args: BarcodeScannerWidgetArgs(
                key: key, onBarcodeDeteced: onBarcodeDeteced));

  static const String name = 'BarcodeScannerWidget';
}

class BarcodeScannerWidgetArgs {
  const BarcodeScannerWidgetArgs({this.key, required this.onBarcodeDeteced});

  final _i14.Key? key;

  final void Function(_i15.Barcode) onBarcodeDeteced;

  @override
  String toString() {
    return 'BarcodeScannerWidgetArgs{key: $key, onBarcodeDeteced: $onBarcodeDeteced}';
  }
}

/// generated route for
/// [_i7.RegistrationWrappingPage]
class RegistrationWrappingRoute extends _i13.PageRouteInfo<void> {
  const RegistrationWrappingRoute({List<_i13.PageRouteInfo>? children})
      : super(RegistrationWrappingRoute.name,
            path: '/registration-wrapping-page', initialChildren: children);

  static const String name = 'RegistrationWrappingRoute';
}

/// generated route for
/// [_i8.ShopFormPage]
class ShopFormRoute extends _i13.PageRouteInfo<void> {
  const ShopFormRoute() : super(ShopFormRoute.name, path: '');

  static const String name = 'ShopFormRoute';
}

/// generated route for
/// [_i9.LocationPickerPage]
class LocationPickerRoute extends _i13.PageRouteInfo<LocationPickerRouteArgs> {
  LocationPickerRoute({_i14.Key? key})
      : super(LocationPickerRoute.name,
            path: 'location-picker-page',
            args: LocationPickerRouteArgs(key: key));

  static const String name = 'LocationPickerRoute';
}

class LocationPickerRouteArgs {
  const LocationPickerRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'LocationPickerRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.OpeningHoursPage]
class OpeningHoursRoute extends _i13.PageRouteInfo<void> {
  const OpeningHoursRoute()
      : super(OpeningHoursRoute.name, path: 'opening-hours-page');

  static const String name = 'OpeningHoursRoute';
}

/// generated route for
/// [_i11.LogoPickerPage]
class LogoPickerRoute extends _i13.PageRouteInfo<void> {
  const LogoPickerRoute()
      : super(LogoPickerRoute.name, path: 'logo-picker-page');

  static const String name = 'LogoPickerRoute';
}

/// generated route for
/// [_i12.RegistrationRecapPage]
class RegistrationRecapRoute extends _i13.PageRouteInfo<void> {
  const RegistrationRecapRoute()
      : super(RegistrationRecapRoute.name, path: 'registration-recap-page');

  static const String name = 'RegistrationRecapRoute';
}
