// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i15;
import 'package:shopify_domain/product/product_snippets.dart' as _i17;
import 'package:shopify_domain/shop.dart' as _i16;

import '../../home_page.dart' as _i3;
import '../best_offers/best_offers_page.dart' as _i12;
import '../cart/cart_page.dart' as _i5;
import '../core/debug_page.dart' as _i6;
import '../favourites/favourites_page.dart' as _i13;
import '../product/product_preview_page.dart' as _i11;
import '../shop/shop_products_browser_page.dart' as _i10;
import '../shop_picker_page.dart' as _i9;
import '../sign_in/sign_in_page.dart' as _i7;
import '../sign_in/sign_up_page.dart' as _i8;
import '../splash/splash_page.dart' as _i2;
import '../your_lists/your_lists_page.dart' as _i14;
import 'auth_wrapper.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuthWrapperRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthWrapperPage());
    },
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    HomeRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    ShopPickerRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    CartRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CartPage());
    },
    BestOffersRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    FavouritesRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    YourListsRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    DebugRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DebugPage());
    },
    SignInRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SignInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SignUpPage());
    },
    ShopPickerRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ShopPickerPage());
    },
    ShopProductsBrowserRoute.name: (routeData) {
      final args = routeData.argsAs<ShopProductsBrowserRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.ShopProductsBrowserPage(
              key: args.key, shop: args.shop, title: args.title));
    },
    ProductPreviewRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPreviewRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.ProductPreviewPage(
              key: args.key,
              product: args.product,
              shop: args.shop,
              title: args.title));
    },
    BestOffersRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.BestOffersPage());
    },
    FavouritesRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.FavouritesPage());
    },
    YourListsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.YourListsPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(AuthWrapperRoute.name, path: '/', children: [
          _i4.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: AuthWrapperRoute.name,
              children: [
                _i4.RouteConfig(ShopPickerRouter.name,
                    path: '',
                    parent: HomeRouter.name,
                    children: [
                      _i4.RouteConfig(ShopPickerRoute.name,
                          path: '', parent: ShopPickerRouter.name),
                      _i4.RouteConfig(ShopProductsBrowserRoute.name,
                          path: ':title', parent: ShopPickerRouter.name),
                      _i4.RouteConfig(ProductPreviewRoute.name,
                          path: ':title', parent: ShopPickerRouter.name)
                    ]),
                _i4.RouteConfig(CartRouter.name,
                    path: 'Cart', parent: HomeRouter.name),
                _i4.RouteConfig(BestOffersRouter.name,
                    path: 'Best Offers',
                    parent: HomeRouter.name,
                    children: [
                      _i4.RouteConfig(BestOffersRoute.name,
                          path: 'best-offers-page',
                          parent: BestOffersRouter.name)
                    ]),
                _i4.RouteConfig(FavouritesRouter.name,
                    path: 'Favourites',
                    parent: HomeRouter.name,
                    children: [
                      _i4.RouteConfig(FavouritesRoute.name,
                          path: 'favourites-page',
                          parent: FavouritesRouter.name)
                    ]),
                _i4.RouteConfig(YourListsRouter.name,
                    path: 'Your Lists',
                    parent: HomeRouter.name,
                    children: [
                      _i4.RouteConfig(YourListsRoute.name,
                          path: 'your-lists-page', parent: YourListsRouter.name)
                    ]),
                _i4.RouteConfig(DebugRoute.name,
                    path: 'debug-page', parent: HomeRouter.name),
                _i4.RouteConfig(SignInRoute.name,
                    path: 'sign-in-page', parent: HomeRouter.name),
                _i4.RouteConfig(SignUpRoute.name,
                    path: 'sign-up-page', parent: HomeRouter.name)
              ])
        ]),
        _i4.RouteConfig(SplashRoute.name, path: '/splash-page')
      ];
}

/// generated route for
/// [_i1.AuthWrapperPage]
class AuthWrapperRoute extends _i4.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i4.PageRouteInfo>? children})
      : super(AuthWrapperRoute.name, path: '/', initialChildren: children);

  static const String name = 'AuthWrapperRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRouter extends _i4.PageRouteInfo<void> {
  const HomeRouter({List<_i4.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class ShopPickerRouter extends _i4.PageRouteInfo<void> {
  const ShopPickerRouter({List<_i4.PageRouteInfo>? children})
      : super(ShopPickerRouter.name, path: '', initialChildren: children);

  static const String name = 'ShopPickerRouter';
}

/// generated route for
/// [_i5.CartPage]
class CartRouter extends _i4.PageRouteInfo<void> {
  const CartRouter() : super(CartRouter.name, path: 'Cart');

  static const String name = 'CartRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class BestOffersRouter extends _i4.PageRouteInfo<void> {
  const BestOffersRouter({List<_i4.PageRouteInfo>? children})
      : super(BestOffersRouter.name,
            path: 'Best Offers', initialChildren: children);

  static const String name = 'BestOffersRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class FavouritesRouter extends _i4.PageRouteInfo<void> {
  const FavouritesRouter({List<_i4.PageRouteInfo>? children})
      : super(FavouritesRouter.name,
            path: 'Favourites', initialChildren: children);

  static const String name = 'FavouritesRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class YourListsRouter extends _i4.PageRouteInfo<void> {
  const YourListsRouter({List<_i4.PageRouteInfo>? children})
      : super(YourListsRouter.name,
            path: 'Your Lists', initialChildren: children);

  static const String name = 'YourListsRouter';
}

/// generated route for
/// [_i6.DebugPage]
class DebugRoute extends _i4.PageRouteInfo<void> {
  const DebugRoute() : super(DebugRoute.name, path: 'debug-page');

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i7.SignInPage]
class SignInRoute extends _i4.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: 'sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i8.SignUpPage]
class SignUpRoute extends _i4.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i9.ShopPickerPage]
class ShopPickerRoute extends _i4.PageRouteInfo<void> {
  const ShopPickerRoute() : super(ShopPickerRoute.name, path: '');

  static const String name = 'ShopPickerRoute';
}

/// generated route for
/// [_i10.ShopProductsBrowserPage]
class ShopProductsBrowserRoute
    extends _i4.PageRouteInfo<ShopProductsBrowserRouteArgs> {
  ShopProductsBrowserRoute(
      {_i15.Key? key, required _i16.Shop shop, required String title})
      : super(ShopProductsBrowserRoute.name,
            path: ':title',
            args: ShopProductsBrowserRouteArgs(
                key: key, shop: shop, title: title),
            rawPathParams: {'title': title});

  static const String name = 'ShopProductsBrowserRoute';
}

class ShopProductsBrowserRouteArgs {
  const ShopProductsBrowserRouteArgs(
      {this.key, required this.shop, required this.title});

  final _i15.Key? key;

  final _i16.Shop shop;

  final String title;

  @override
  String toString() {
    return 'ShopProductsBrowserRouteArgs{key: $key, shop: $shop, title: $title}';
  }
}

/// generated route for
/// [_i11.ProductPreviewPage]
class ProductPreviewRoute extends _i4.PageRouteInfo<ProductPreviewRouteArgs> {
  ProductPreviewRoute(
      {_i15.Key? key,
      required _i17.PricedProduct product,
      required _i16.Shop shop,
      required String title})
      : super(ProductPreviewRoute.name,
            path: ':title',
            args: ProductPreviewRouteArgs(
                key: key, product: product, shop: shop, title: title),
            rawPathParams: {'title': title});

  static const String name = 'ProductPreviewRoute';
}

class ProductPreviewRouteArgs {
  const ProductPreviewRouteArgs(
      {this.key,
      required this.product,
      required this.shop,
      required this.title});

  final _i15.Key? key;

  final _i17.PricedProduct product;

  final _i16.Shop shop;

  final String title;

  @override
  String toString() {
    return 'ProductPreviewRouteArgs{key: $key, product: $product, shop: $shop, title: $title}';
  }
}

/// generated route for
/// [_i12.BestOffersPage]
class BestOffersRoute extends _i4.PageRouteInfo<void> {
  const BestOffersRoute()
      : super(BestOffersRoute.name, path: 'best-offers-page');

  static const String name = 'BestOffersRoute';
}

/// generated route for
/// [_i13.FavouritesPage]
class FavouritesRoute extends _i4.PageRouteInfo<void> {
  const FavouritesRoute()
      : super(FavouritesRoute.name, path: 'favourites-page');

  static const String name = 'FavouritesRoute';
}

/// generated route for
/// [_i14.YourListsPage]
class YourListsRoute extends _i4.PageRouteInfo<void> {
  const YourListsRoute() : super(YourListsRoute.name, path: 'your-lists-page');

  static const String name = 'YourListsRoute';
}
