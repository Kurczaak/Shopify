// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:kt_dart/collection.dart' as _i20;
import 'package:shopify_domain/cart/cart_item.dart' as _i21;
import 'package:shopify_domain/order/order.dart' as _i22;
import 'package:shopify_domain/product.dart' as _i19;
import 'package:shopify_domain/shop.dart' as _i23;

import '../debug_dashboard_page.dart' as _i6;
import '../orders/order_page.dart' as _i9;
import '../orders/shop_chooser.dart' as _i8;
import '../orders/shop_orders_page.dart' as _i10;
import '../product/product_adder_page.dart' as _i1;
import '../product/product_form_page.dart' as _i2;
import '../product/product_searching_screen.dart' as _i7;
import '../register_shop/location_picker/location_picker_page.dart' as _i13;
import '../register_shop/logo_picker/logo_picker_page.dart' as _i15;
import '../register_shop/opening_hours/opening_hours_page.dart' as _i14;
import '../register_shop/recap/registration_recap_page.dart' as _i16;
import '../register_shop/registration_wrapping_page.dart' as _i11;
import '../register_shop/shop_form/shop_form_page.dart' as _i12;
import '../sign_in/sign_in_page.dart' as _i4;
import '../sign_in/sign_up_page.dart' as _i5;
import '../splash/splash_page.dart' as _i3;

class AppRouter extends _i17.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    ProductAdderRoute.name: (routeData) {
      final args = routeData.argsAs<ProductAdderRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.ProductAdderPage(key: args.key, product: args.product));
    },
    ProductFormRoute.name: (routeData) {
      final args = routeData.argsAs<ProductFormRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ProductFormPage(
              key: args.key, barcode: args.barcode, product: args.product));
    },
    SplashRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SignUpPage());
    },
    DebugDashboardRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DebugDashboardPage());
    },
    ProductSearchingScreen.name: (routeData) {
      final args = routeData.argsAs<ProductSearchingScreenArgs>();
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.ProductSearchingScreen(args.barcode, key: args.key));
    },
    ShopChooserRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ShopChooserPage());
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.OrderPage(
              key: args.key,
              orderItems: args.orderItems,
              title: args.title,
              status: args.status));
    },
    ShopOrdersRoute.name: (routeData) {
      final args = routeData.argsAs<ShopOrdersRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.ShopOrdersPage(key: args.key, shop: args.shop));
    },
    RegistrationWrappingRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.RegistrationWrappingPage());
    },
    ShopFormRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ShopFormPage());
    },
    LocationPickerRoute.name: (routeData) {
      final args = routeData.argsAs<LocationPickerRouteArgs>(
          orElse: () => const LocationPickerRouteArgs());
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: _i13.LocationPickerPage(key: args.key));
    },
    OpeningHoursRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.OpeningHoursPage());
    },
    LogoPickerRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.LogoPickerPage());
    },
    RegistrationRecapRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.RegistrationRecapPage());
    }
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(ProductAdderRoute.name, path: '/product-adder-page'),
        _i17.RouteConfig(ProductFormRoute.name, path: '/product-form-page'),
        _i17.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i17.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i17.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i17.RouteConfig(DebugDashboardRoute.name, path: '/'),
        _i17.RouteConfig(ProductSearchingScreen.name,
            path: '/product-searching-screen'),
        _i17.RouteConfig(ShopChooserRoute.name, path: '/shop-chooser-page'),
        _i17.RouteConfig(OrderRoute.name, path: '/order-page'),
        _i17.RouteConfig(ShopOrdersRoute.name, path: '/shop-orders-page'),
        _i17.RouteConfig(RegistrationWrappingRoute.name,
            path: '/registration-wrapping-page',
            children: [
              _i17.RouteConfig(ShopFormRoute.name,
                  path: '', parent: RegistrationWrappingRoute.name),
              _i17.RouteConfig(LocationPickerRoute.name,
                  path: 'location-picker-page',
                  parent: RegistrationWrappingRoute.name),
              _i17.RouteConfig(OpeningHoursRoute.name,
                  path: 'opening-hours-page',
                  parent: RegistrationWrappingRoute.name),
              _i17.RouteConfig(LogoPickerRoute.name,
                  path: 'logo-picker-page',
                  parent: RegistrationWrappingRoute.name),
              _i17.RouteConfig(RegistrationRecapRoute.name,
                  path: 'registration-recap-page',
                  parent: RegistrationWrappingRoute.name)
            ])
      ];
}

/// generated route for
/// [_i1.ProductAdderPage]
class ProductAdderRoute extends _i17.PageRouteInfo<ProductAdderRouteArgs> {
  ProductAdderRoute({_i18.Key? key, required _i19.Product product})
      : super(ProductAdderRoute.name,
            path: '/product-adder-page',
            args: ProductAdderRouteArgs(key: key, product: product));

  static const String name = 'ProductAdderRoute';
}

class ProductAdderRouteArgs {
  const ProductAdderRouteArgs({this.key, required this.product});

  final _i18.Key? key;

  final _i19.Product product;

  @override
  String toString() {
    return 'ProductAdderRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i2.ProductFormPage]
class ProductFormRoute extends _i17.PageRouteInfo<ProductFormRouteArgs> {
  ProductFormRoute(
      {_i18.Key? key, required _i19.Barcode barcode, _i19.Product? product})
      : super(ProductFormRoute.name,
            path: '/product-form-page',
            args: ProductFormRouteArgs(
                key: key, barcode: barcode, product: product));

  static const String name = 'ProductFormRoute';
}

class ProductFormRouteArgs {
  const ProductFormRouteArgs({this.key, required this.barcode, this.product});

  final _i18.Key? key;

  final _i19.Barcode barcode;

  final _i19.Product? product;

  @override
  String toString() {
    return 'ProductFormRouteArgs{key: $key, barcode: $barcode, product: $product}';
  }
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i4.SignInPage]
class SignInRoute extends _i17.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i5.SignUpPage]
class SignUpRoute extends _i17.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i6.DebugDashboardPage]
class DebugDashboardRoute extends _i17.PageRouteInfo<void> {
  const DebugDashboardRoute() : super(DebugDashboardRoute.name, path: '/');

  static const String name = 'DebugDashboardRoute';
}

/// generated route for
/// [_i7.ProductSearchingScreen]
class ProductSearchingScreen
    extends _i17.PageRouteInfo<ProductSearchingScreenArgs> {
  ProductSearchingScreen({required _i19.Barcode barcode, _i18.Key? key})
      : super(ProductSearchingScreen.name,
            path: '/product-searching-screen',
            args: ProductSearchingScreenArgs(barcode: barcode, key: key));

  static const String name = 'ProductSearchingScreen';
}

class ProductSearchingScreenArgs {
  const ProductSearchingScreenArgs({required this.barcode, this.key});

  final _i19.Barcode barcode;

  final _i18.Key? key;

  @override
  String toString() {
    return 'ProductSearchingScreenArgs{barcode: $barcode, key: $key}';
  }
}

/// generated route for
/// [_i8.ShopChooserPage]
class ShopChooserRoute extends _i17.PageRouteInfo<void> {
  const ShopChooserRoute()
      : super(ShopChooserRoute.name, path: '/shop-chooser-page');

  static const String name = 'ShopChooserRoute';
}

/// generated route for
/// [_i9.OrderPage]
class OrderRoute extends _i17.PageRouteInfo<OrderRouteArgs> {
  OrderRoute(
      {_i18.Key? key,
      required _i20.KtList<_i21.CartItem> orderItems,
      required String title,
      required _i22.OrderStatus status})
      : super(OrderRoute.name,
            path: '/order-page',
            args: OrderRouteArgs(
                key: key,
                orderItems: orderItems,
                title: title,
                status: status));

  static const String name = 'OrderRoute';
}

class OrderRouteArgs {
  const OrderRouteArgs(
      {this.key,
      required this.orderItems,
      required this.title,
      required this.status});

  final _i18.Key? key;

  final _i20.KtList<_i21.CartItem> orderItems;

  final String title;

  final _i22.OrderStatus status;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, orderItems: $orderItems, title: $title, status: $status}';
  }
}

/// generated route for
/// [_i10.ShopOrdersPage]
class ShopOrdersRoute extends _i17.PageRouteInfo<ShopOrdersRouteArgs> {
  ShopOrdersRoute({_i18.Key? key, required _i23.Shop shop})
      : super(ShopOrdersRoute.name,
            path: '/shop-orders-page',
            args: ShopOrdersRouteArgs(key: key, shop: shop));

  static const String name = 'ShopOrdersRoute';
}

class ShopOrdersRouteArgs {
  const ShopOrdersRouteArgs({this.key, required this.shop});

  final _i18.Key? key;

  final _i23.Shop shop;

  @override
  String toString() {
    return 'ShopOrdersRouteArgs{key: $key, shop: $shop}';
  }
}

/// generated route for
/// [_i11.RegistrationWrappingPage]
class RegistrationWrappingRoute extends _i17.PageRouteInfo<void> {
  const RegistrationWrappingRoute({List<_i17.PageRouteInfo>? children})
      : super(RegistrationWrappingRoute.name,
            path: '/registration-wrapping-page', initialChildren: children);

  static const String name = 'RegistrationWrappingRoute';
}

/// generated route for
/// [_i12.ShopFormPage]
class ShopFormRoute extends _i17.PageRouteInfo<void> {
  const ShopFormRoute() : super(ShopFormRoute.name, path: '');

  static const String name = 'ShopFormRoute';
}

/// generated route for
/// [_i13.LocationPickerPage]
class LocationPickerRoute extends _i17.PageRouteInfo<LocationPickerRouteArgs> {
  LocationPickerRoute({_i18.Key? key})
      : super(LocationPickerRoute.name,
            path: 'location-picker-page',
            args: LocationPickerRouteArgs(key: key));

  static const String name = 'LocationPickerRoute';
}

class LocationPickerRouteArgs {
  const LocationPickerRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'LocationPickerRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.OpeningHoursPage]
class OpeningHoursRoute extends _i17.PageRouteInfo<void> {
  const OpeningHoursRoute()
      : super(OpeningHoursRoute.name, path: 'opening-hours-page');

  static const String name = 'OpeningHoursRoute';
}

/// generated route for
/// [_i15.LogoPickerPage]
class LogoPickerRoute extends _i17.PageRouteInfo<void> {
  const LogoPickerRoute()
      : super(LogoPickerRoute.name, path: 'logo-picker-page');

  static const String name = 'LogoPickerRoute';
}

/// generated route for
/// [_i16.RegistrationRecapPage]
class RegistrationRecapRoute extends _i17.PageRouteInfo<void> {
  const RegistrationRecapRoute()
      : super(RegistrationRecapRoute.name, path: 'registration-recap-page');

  static const String name = 'RegistrationRecapRoute';
}
