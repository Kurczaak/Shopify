// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:shopify_domain/product/product_snippets.dart' as _i12;
import 'package:shopify_domain/shop.dart' as _i11;

import '../core/debug_page.dart' as _i4;
import '../product/product_preview_page.dart' as _i8;
import '../shop/shop_products_browser_page.dart' as _i7;
import '../shop_picker_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i5;
import '../sign_in/sign_up_page.dart' as _i6;
import '../splash/splash_page.dart' as _i2;
import 'auth_wrapper.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AuthWrapperRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthWrapperPage());
    },
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    ShopPickerRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ShopPickerPage());
    },
    DebugRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DebugPage());
    },
    SignInRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SignInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SignUpPage());
    },
    ShopProductsBrowserRoute.name: (routeData) {
      final args = routeData.argsAs<ShopProductsBrowserRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.ShopProductsBrowserPage(key: args.key, shop: args.shop));
    },
    ProductPreviewRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPreviewRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.ProductPreviewPage(
              key: args.key, product: args.product, shop: args.shop));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(AuthWrapperRoute.name, path: '/', children: [
          _i9.RouteConfig(ShopPickerRoute.name,
              path: '', parent: AuthWrapperRoute.name),
          _i9.RouteConfig(DebugRoute.name,
              path: 'debug-page', parent: AuthWrapperRoute.name),
          _i9.RouteConfig(SignInRoute.name,
              path: 'sign-in-page', parent: AuthWrapperRoute.name),
          _i9.RouteConfig(SignUpRoute.name,
              path: 'sign-up-page', parent: AuthWrapperRoute.name),
          _i9.RouteConfig(ShopProductsBrowserRoute.name,
              path: 'shop-products-browser-page',
              parent: AuthWrapperRoute.name),
          _i9.RouteConfig(ProductPreviewRoute.name,
              path: 'product-preview-page', parent: AuthWrapperRoute.name)
        ]),
        _i9.RouteConfig(SplashRoute.name, path: '/splash-page')
      ];
}

/// generated route for
/// [_i1.AuthWrapperPage]
class AuthWrapperRoute extends _i9.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i9.PageRouteInfo>? children})
      : super(AuthWrapperRoute.name, path: '/', initialChildren: children);

  static const String name = 'AuthWrapperRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.ShopPickerPage]
class ShopPickerRoute extends _i9.PageRouteInfo<void> {
  const ShopPickerRoute() : super(ShopPickerRoute.name, path: '');

  static const String name = 'ShopPickerRoute';
}

/// generated route for
/// [_i4.DebugPage]
class DebugRoute extends _i9.PageRouteInfo<void> {
  const DebugRoute() : super(DebugRoute.name, path: 'debug-page');

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i5.SignInPage]
class SignInRoute extends _i9.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: 'sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i7.ShopProductsBrowserPage]
class ShopProductsBrowserRoute
    extends _i9.PageRouteInfo<ShopProductsBrowserRouteArgs> {
  ShopProductsBrowserRoute({_i10.Key? key, required _i11.Shop shop})
      : super(ShopProductsBrowserRoute.name,
            path: 'shop-products-browser-page',
            args: ShopProductsBrowserRouteArgs(key: key, shop: shop));

  static const String name = 'ShopProductsBrowserRoute';
}

class ShopProductsBrowserRouteArgs {
  const ShopProductsBrowserRouteArgs({this.key, required this.shop});

  final _i10.Key? key;

  final _i11.Shop shop;

  @override
  String toString() {
    return 'ShopProductsBrowserRouteArgs{key: $key, shop: $shop}';
  }
}

/// generated route for
/// [_i8.ProductPreviewPage]
class ProductPreviewRoute extends _i9.PageRouteInfo<ProductPreviewRouteArgs> {
  ProductPreviewRoute(
      {_i10.Key? key,
      required _i12.PricedProduct product,
      required _i11.Shop shop})
      : super(ProductPreviewRoute.name,
            path: 'product-preview-page',
            args: ProductPreviewRouteArgs(
                key: key, product: product, shop: shop));

  static const String name = 'ProductPreviewRoute';
}

class ProductPreviewRouteArgs {
  const ProductPreviewRouteArgs(
      {this.key, required this.product, required this.shop});

  final _i10.Key? key;

  final _i12.PricedProduct product;

  final _i11.Shop shop;

  @override
  String toString() {
    return 'ProductPreviewRouteArgs{key: $key, product: $product, shop: $shop}';
  }
}
