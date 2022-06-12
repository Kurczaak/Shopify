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
import 'package:shopify_domain/shop/shop.dart' as _i10;

import '../core/debug_page.dart' as _i4;
import '../debug.dart' as _i5;
import '../shop_picker_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i6;
import '../sign_in/sign_up_page.dart' as _i7;
import '../splash/splash_page.dart' as _i2;
import 'auth_wrapper.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AuthWrapperRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthWrapperPage());
    },
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    ShopPickerRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ShopPickerPage());
    },
    DebugRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DebugPage());
    },
    DebugShopRoute.name: (routeData) {
      final args = routeData.argsAs<DebugShopRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.DebugShopPage(key: args.key, shop: args.shop));
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SignInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SignUpPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(AuthWrapperRoute.name,
            path: '/auth-wrapper-page',
            children: [
              _i8.RouteConfig(ShopPickerRoute.name,
                  path: 'shop-picker-page', parent: AuthWrapperRoute.name),
              _i8.RouteConfig(ShopPickerRoute.name,
                  path: 'shop-picker-page', parent: AuthWrapperRoute.name),
              _i8.RouteConfig(DebugRoute.name,
                  path: 'debug-page', parent: AuthWrapperRoute.name),
              _i8.RouteConfig(DebugShopRoute.name,
                  path: 'debug-shop-page', parent: AuthWrapperRoute.name),
              _i8.RouteConfig(SignInRoute.name,
                  path: 'sign-in-page', parent: AuthWrapperRoute.name),
              _i8.RouteConfig(SignUpRoute.name,
                  path: 'sign-up-page', parent: AuthWrapperRoute.name)
            ]),
        _i8.RouteConfig(SplashRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.AuthWrapperPage]
class AuthWrapperRoute extends _i8.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i8.PageRouteInfo>? children})
      : super(AuthWrapperRoute.name,
            path: '/auth-wrapper-page', initialChildren: children);

  static const String name = 'AuthWrapperRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.ShopPickerPage]
class ShopPickerRoute extends _i8.PageRouteInfo<void> {
  const ShopPickerRoute()
      : super(ShopPickerRoute.name, path: 'shop-picker-page');

  static const String name = 'ShopPickerRoute';
}

/// generated route for
/// [_i4.DebugPage]
class DebugRoute extends _i8.PageRouteInfo<void> {
  const DebugRoute() : super(DebugRoute.name, path: 'debug-page');

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i5.DebugShopPage]
class DebugShopRoute extends _i8.PageRouteInfo<DebugShopRouteArgs> {
  DebugShopRoute({_i9.Key? key, required _i10.Shop shop})
      : super(DebugShopRoute.name,
            path: 'debug-shop-page',
            args: DebugShopRouteArgs(key: key, shop: shop));

  static const String name = 'DebugShopRoute';
}

class DebugShopRouteArgs {
  const DebugShopRouteArgs({this.key, required this.shop});

  final _i9.Key? key;

  final _i10.Shop shop;

  @override
  String toString() {
    return 'DebugShopRouteArgs{key: $key, shop: $shop}';
  }
}

/// generated route for
/// [_i6.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: 'sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i7.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'sign-up-page');

  static const String name = 'SignUpRoute';
}
