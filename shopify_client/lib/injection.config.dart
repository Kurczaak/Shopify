// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shopify_domain/auth.dart' as _i5;
import 'package:shopify_domain/cart/shopify_cart_facade.dart' as _i8;
import 'package:shopify_domain/core/location/shopify_location_facade.dart'
    as _i14;
import 'package:shopify_domain/core/network/network_info.dart' as _i29;
import 'package:shopify_domain/favourites/shopify_favourites_facade.dart'
    as _i11;
import 'package:shopify_domain/order/shopify_order_facade.dart' as _i17;
import 'package:shopify_domain/product.dart' as _i20;
import 'package:shopify_domain/product/shopify_product_searcher.dart' as _i21;
import 'package:shopify_domain/shop/shopify_shop_repository.dart' as _i24;

import 'application/auth/auth_bloc.dart' as _i31;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i35;
import 'application/cart_and_favourite/cart_and_favourite_bloc.dart' as _i32;
import 'application/cart_item/cart_item_bloc.dart' as _i33;
import 'application/favourites_watcher/favourites_watcher_bloc.dart' as _i34;
import 'application/order_watcher/order_watcher_bloc.dart' as _i25;
import 'application/product_preview/product_preview_bloc.dart' as _i26;
import 'application/product_watcher/product_watcher_bloc.dart' as _i27;
import 'application/shop_picker/shop_picker_bloc.dart' as _i28;
import 'application/user_carts/user_carts_bloc.dart' as _i30;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'domain/cart/I_cart_facade.dart' as _i6;
import 'domain/core/i_location_facade.dart' as _i12;
import 'domain/favourites/favourites_facade.dart' as _i9;
import 'domain/order/i_order_facade.dart' as _i15;
import 'domain/product/i_product_repository.dart' as _i18;
import 'domain/shop/i_shop_repository.dart' as _i22;
import 'infrastructure/auth/auth_facade_impl.dart' as _i4;
import 'infrastructure/cart/cart_facade_impl.dart' as _i7;
import 'infrastructure/core/location_facade_impl.dart' as _i13;
import 'infrastructure/favourites/shopify_favourites_facade_impl.dart' as _i10;
import 'infrastructure/order/order_facade_impl.dart' as _i16;
import 'infrastructure/product/product_repository_implementation.dart' as _i19;
import 'infrastructure/shop/shop_repository.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(
      () => _i4.AuthFacadeImpl(get<_i5.ShopifyAuth>()));
  gh.lazySingleton<_i6.ICartFacade>(
      () => _i7.CartFacadeImpl(get<_i8.ShopifyCartFacade>()));
  gh.factory<_i9.IFavouritesFacade>(() =>
      _i10.ShopifyFavouritesFacadeImpl(get<_i11.IShopifyFavouritesFacade>()));
  gh.lazySingleton<_i12.ILocationFacade>(
      () => _i13.LocationFacadeImpl(get<_i14.ShopifyLocationFacade>()));
  gh.factory<_i15.IOrderFacade>(
      () => _i16.OrderFacadeImpl(get<_i17.ShopifyOrderFacade>()));
  gh.lazySingleton<_i18.IProductRepository>(() => _i19.ProductRepositoryImpl(
      productRepository: get<_i20.ShopifyProductRepository>(),
      productSearcher: get<_i21.ShopifyProductSearcher>()));
  gh.lazySingleton<_i22.IShopRepository>(
      () => _i23.ShopRepositoryImpl(get<_i24.ShopifyShopRepository>()));
  gh.factory<_i25.OrderWatcherBloc>(
      () => _i25.OrderWatcherBloc(get<_i15.IOrderFacade>()));
  gh.factory<_i26.ProductPreviewBloc>(
      () => _i26.ProductPreviewBloc(get<_i18.IProductRepository>()));
  gh.factory<_i27.ProductWatcherBloc>(() =>
      _i27.ProductWatcherBloc(repository: get<_i18.IProductRepository>()));
  gh.factory<_i28.ShopPickerBloc>(() => _i28.ShopPickerBloc(
      networkInfo: get<_i29.NetworkInfo>(),
      location: get<_i12.ILocationFacade>(),
      shopRepository: get<_i22.IShopRepository>()));
  gh.factory<_i30.UserCartsBloc>(() =>
      _i30.UserCartsBloc(get<_i6.ICartFacade>(), get<_i29.NetworkInfo>()));
  gh.lazySingleton<_i31.AuthBloc>(() => _i31.AuthBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i32.CartAndFavouriteBloc>(() => _i32.CartAndFavouriteBloc(
      cartFacade: get<_i6.ICartFacade>(),
      favouritesFacade: get<_i9.IFavouritesFacade>()));
  gh.factory<_i33.CartItemBloc>(
      () => _i33.CartItemBloc(get<_i6.ICartFacade>()));
  gh.factory<_i34.FavouritesWatcherBloc>(
      () => _i34.FavouritesWatcherBloc(get<_i9.IFavouritesFacade>()));
  gh.factory<_i35.SignInFormBloc>(
      () => _i35.SignInFormBloc(get<_i3.IAuthFacade>(), get<_i31.AuthBloc>()));
  return get;
}
