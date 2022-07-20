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
import 'package:flutter/material.dart' as _i17;
import 'package:kt_dart/collection.dart' as _i18;
import 'package:shopify_domain/cart/cart_item.dart' as _i19;
import 'package:shopify_domain/product.dart' as _i21;
import 'package:shopify_domain/shop.dart' as _i20;

import '../../home_page.dart' as _i5;
import '../best_offers/best_offers_page.dart' as _i15;
import '../cart/cart_page.dart' as _i9;
import '../core/debug_page.dart' as _i11;
import '../favourites/favourites_page.dart' as _i10;
import '../order/order_page.dart' as _i4;
import '../order/user_orders_page.dart' as _i3;
import '../product/product_preview_page.dart' as _i14;
import '../shop/shop_products_browser_page.dart' as _i13;
import '../shop_picker_page.dart' as _i12;
import '../sign_in/sign_in_page.dart' as _i6;
import '../sign_in/sign_up_page.dart' as _i7;
import '../splash/splash_page.dart' as _i2;
import '../your_lists/your_lists_page.dart' as _i16;
import 'auth_wrapper.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
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
    UserOrdersRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.UserOrdersPage());
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.OrderPage(
              key: args.key, orderItems: args.orderItems, title: args.title));
    },
    HomeRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SignInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SignUpPage());
    },
    ShopPickerRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    CartRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.CartPage());
    },
    BestOffersRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    FavouritesRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.FavouritesPage());
    },
    YourListsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    DebugRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.DebugPage());
    },
    ShopPickerRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ShopPickerPage());
    },
    ShopProductsBrowserRoute.name: (routeData) {
      final args = routeData.argsAs<ShopProductsBrowserRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.ShopProductsBrowserPage(
              key: args.key, shop: args.shop, title: args.title));
    },
    ProductPreviewRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPreviewRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.ProductPreviewPage(
              key: args.key,
              product: args.product,
              shop: args.shop,
              title: args.title));
    },
    BestOffersRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.BestOffersPage());
    },
    YourListsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.YourListsPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(AuthWrapperRoute.name,
            path: '/auth-wrapper-page',
            children: [
              _i8.RouteConfig(UserOrdersRoute.name,
                  path: 'user-orders-page', parent: AuthWrapperRoute.name),
              _i8.RouteConfig(OrderRoute.name,
                  path: 'order-page', parent: AuthWrapperRoute.name),
              _i8.RouteConfig(HomeRouter.name,
                  path: 'home',
                  parent: AuthWrapperRoute.name,
                  children: [
                    _i8.RouteConfig(ShopPickerRouter.name,
                        path: '',
                        parent: HomeRouter.name,
                        children: [
                          _i8.RouteConfig(ShopPickerRoute.name,
                              path: '', parent: ShopPickerRouter.name),
                          _i8.RouteConfig(ShopProductsBrowserRoute.name,
                              path: ':title', parent: ShopPickerRouter.name),
                          _i8.RouteConfig(ProductPreviewRoute.name,
                              path: ':title', parent: ShopPickerRouter.name)
                        ]),
                    _i8.RouteConfig(CartRouter.name,
                        path: 'Cart', parent: HomeRouter.name),
                    _i8.RouteConfig(BestOffersRouter.name,
                        path: 'Best Offers',
                        parent: HomeRouter.name,
                        children: [
                          _i8.RouteConfig(BestOffersRoute.name,
                              path: 'best-offers-page',
                              parent: BestOffersRouter.name)
                        ]),
                    _i8.RouteConfig(FavouritesRouter.name,
                        path: 'Favourites', parent: HomeRouter.name),
                    _i8.RouteConfig(YourListsRouter.name,
                        path: 'Your Lists',
                        parent: HomeRouter.name,
                        children: [
                          _i8.RouteConfig(YourListsRoute.name,
                              path: 'your-lists-page',
                              parent: YourListsRouter.name)
                        ]),
                    _i8.RouteConfig(DebugRoute.name,
                        path: 'debug-page', parent: HomeRouter.name)
                  ]),
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
/// [_i3.UserOrdersPage]
class UserOrdersRoute extends _i8.PageRouteInfo<void> {
  const UserOrdersRoute()
      : super(UserOrdersRoute.name, path: 'user-orders-page');

  static const String name = 'UserOrdersRoute';
}

/// generated route for
/// [_i4.OrderPage]
class OrderRoute extends _i8.PageRouteInfo<OrderRouteArgs> {
  OrderRoute(
      {_i17.Key? key,
      required _i18.KtList<_i19.CartItem> orderItems,
      required String title})
      : super(OrderRoute.name,
            path: 'order-page',
            args:
                OrderRouteArgs(key: key, orderItems: orderItems, title: title));

  static const String name = 'OrderRoute';
}

class OrderRouteArgs {
  const OrderRouteArgs(
      {this.key, required this.orderItems, required this.title});

  final _i17.Key? key;

  final _i18.KtList<_i19.CartItem> orderItems;

  final String title;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, orderItems: $orderItems, title: $title}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter({List<_i8.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
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

/// generated route for
/// [_i8.EmptyRouterPage]
class ShopPickerRouter extends _i8.PageRouteInfo<void> {
  const ShopPickerRouter({List<_i8.PageRouteInfo>? children})
      : super(ShopPickerRouter.name, path: '', initialChildren: children);

  static const String name = 'ShopPickerRouter';
}

/// generated route for
/// [_i9.CartPage]
class CartRouter extends _i8.PageRouteInfo<void> {
  const CartRouter() : super(CartRouter.name, path: 'Cart');

  static const String name = 'CartRouter';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class BestOffersRouter extends _i8.PageRouteInfo<void> {
  const BestOffersRouter({List<_i8.PageRouteInfo>? children})
      : super(BestOffersRouter.name,
            path: 'Best Offers', initialChildren: children);

  static const String name = 'BestOffersRouter';
}

/// generated route for
/// [_i10.FavouritesPage]
class FavouritesRouter extends _i8.PageRouteInfo<void> {
  const FavouritesRouter() : super(FavouritesRouter.name, path: 'Favourites');

  static const String name = 'FavouritesRouter';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class YourListsRouter extends _i8.PageRouteInfo<void> {
  const YourListsRouter({List<_i8.PageRouteInfo>? children})
      : super(YourListsRouter.name,
            path: 'Your Lists', initialChildren: children);

  static const String name = 'YourListsRouter';
}

/// generated route for
/// [_i11.DebugPage]
class DebugRoute extends _i8.PageRouteInfo<void> {
  const DebugRoute() : super(DebugRoute.name, path: 'debug-page');

  static const String name = 'DebugRoute';
}

/// generated route for
/// [_i12.ShopPickerPage]
class ShopPickerRoute extends _i8.PageRouteInfo<void> {
  const ShopPickerRoute() : super(ShopPickerRoute.name, path: '');

  static const String name = 'ShopPickerRoute';
}

/// generated route for
/// [_i13.ShopProductsBrowserPage]
class ShopProductsBrowserRoute
    extends _i8.PageRouteInfo<ShopProductsBrowserRouteArgs> {
  ShopProductsBrowserRoute(
      {_i17.Key? key, required _i20.Shop shop, required String title})
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

  final _i17.Key? key;

  final _i20.Shop shop;

  final String title;

  @override
  String toString() {
    return 'ShopProductsBrowserRouteArgs{key: $key, shop: $shop, title: $title}';
  }
}

/// generated route for
/// [_i14.ProductPreviewPage]
class ProductPreviewRoute extends _i8.PageRouteInfo<ProductPreviewRouteArgs> {
  ProductPreviewRoute(
      {_i17.Key? key,
      required _i21.PricedProduct product,
      required _i20.Shop shop,
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

  final _i17.Key? key;

  final _i21.PricedProduct product;

  final _i20.Shop shop;

  final String title;

  @override
  String toString() {
    return 'ProductPreviewRouteArgs{key: $key, product: $product, shop: $shop, title: $title}';
  }
}

/// generated route for
/// [_i15.BestOffersPage]
class BestOffersRoute extends _i8.PageRouteInfo<void> {
  const BestOffersRoute()
      : super(BestOffersRoute.name, path: 'best-offers-page');

  static const String name = 'BestOffersRoute';
}

/// generated route for
/// [_i16.YourListsPage]
class YourListsRoute extends _i8.PageRouteInfo<void> {
  const YourListsRoute() : super(YourListsRoute.name, path: 'your-lists-page');

  static const String name = 'YourListsRoute';
}
