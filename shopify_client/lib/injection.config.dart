// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shopify_domain/auth.dart' as _i5;
import 'package:shopify_domain/best_offers/shopify_best_offers_facade.dart'
    as _i8;
import 'package:shopify_domain/cart/shopify_cart_facade.dart' as _i11;
import 'package:shopify_domain/core/location/shopify_location_facade.dart'
    as _i17;
import 'package:shopify_domain/core/network/network_info.dart' as _i29;
import 'package:shopify_domain/favourites/shopify_favourites_facade.dart'
    as _i14;
import 'package:shopify_domain/order/shopify_order_facade.dart' as _i20;
import 'package:shopify_domain/product.dart' as _i23;
import 'package:shopify_domain/product/shopify_product_searcher.dart' as _i24;
import 'package:shopify_domain/shop/shopify_shop_repository.dart' as _i27;

import 'application/auth/auth_bloc.dart' as _i35;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i41;
import 'application/best_product_offer_watcher/best_product_offer_watcher_bloc.dart'
    as _i36;
import 'application/cart_and_favourite/cart_and_favourite_bloc.dart' as _i37;
import 'application/cart_item/cart_item_bloc.dart' as _i38;
import 'application/favouirtes_actor/favourites_actor_bloc.dart' as _i39;
import 'application/favourites_watcher/favourites_watcher_bloc.dart' as _i40;
import 'application/location/location_bloc.dart' as _i28;
import 'application/order_watcher/order_watcher_bloc.dart' as _i30;
import 'application/product_preview/product_preview_bloc.dart' as _i31;
import 'application/product_watcher/product_watcher_bloc.dart' as _i32;
import 'application/shop_picker/shop_picker_bloc.dart' as _i33;
import 'application/user_carts/user_carts_bloc.dart' as _i34;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'domain/best_offers/i_best_offers_facade.dart' as _i6;
import 'domain/cart/I_cart_facade.dart' as _i9;
import 'domain/core/i_location_facade.dart' as _i15;
import 'domain/favourites/favourites_facade.dart' as _i12;
import 'domain/order/i_order_facade.dart' as _i18;
import 'domain/product/i_product_repository.dart' as _i21;
import 'domain/shop/i_shop_repository.dart' as _i25;
import 'infrastructure/auth/auth_facade_impl.dart' as _i4;
import 'infrastructure/best_offers/shopify_best_offers_facade_impl.dart' as _i7;
import 'infrastructure/cart/cart_facade_impl.dart' as _i10;
import 'infrastructure/core/location_facade_impl.dart' as _i16;
import 'infrastructure/favourites/shopify_favourites_facade_impl.dart' as _i13;
import 'infrastructure/order/order_facade_impl.dart' as _i19;
import 'infrastructure/product/product_repository_implementation.dart' as _i22;
import 'infrastructure/shop/shop_repository.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(
      () => _i4.AuthFacadeImpl(get<_i5.ShopifyAuth>()));
  gh.factory<_i6.IBestOffersFacade>(() =>
      _i7.ShopifyBestOffersFacadeImpl(get<_i8.ShopifyBestOffersFacade>()));
  gh.lazySingleton<_i9.ICartFacade>(
      () => _i10.CartFacadeImpl(get<_i11.ShopifyCartFacade>()));
  gh.factory<_i12.IFavouritesFacade>(() =>
      _i13.ShopifyFavouritesFacadeImpl(get<_i14.IShopifyFavouritesFacade>()));
  gh.lazySingleton<_i15.ILocationFacade>(
      () => _i16.LocationFacadeImpl(get<_i17.ShopifyLocationFacade>()));
  gh.factory<_i18.IOrderFacade>(
      () => _i19.OrderFacadeImpl(get<_i20.ShopifyOrderFacade>()));
  gh.lazySingleton<_i21.IProductRepository>(() => _i22.ProductRepositoryImpl(
      productRepository: get<_i23.ShopifyProductRepository>(),
      productSearcher: get<_i24.ShopifyProductSearcher>()));
  gh.lazySingleton<_i25.IShopRepository>(
      () => _i26.ShopRepositoryImpl(get<_i27.ShopifyShopRepository>()));
  gh.lazySingleton<_i28.LocationBloc>(() => _i28.LocationBloc(
      location: get<_i15.ILocationFacade>(),
      networkInfo: get<_i29.NetworkInfo>()));
  gh.factory<_i30.OrderWatcherBloc>(
      () => _i30.OrderWatcherBloc(get<_i18.IOrderFacade>()));
  gh.factory<_i31.ProductPreviewBloc>(
      () => _i31.ProductPreviewBloc(get<_i21.IProductRepository>()));
  gh.factory<_i32.ProductWatcherBloc>(() =>
      _i32.ProductWatcherBloc(repository: get<_i21.IProductRepository>()));
  gh.factory<_i33.ShopPickerBloc>(() => _i33.ShopPickerBloc(
      networkInfo: get<_i29.NetworkInfo>(),
      shopRepository: get<_i25.IShopRepository>()));
  gh.factory<_i34.UserCartsBloc>(() =>
      _i34.UserCartsBloc(get<_i9.ICartFacade>(), get<_i29.NetworkInfo>()));
  gh.lazySingleton<_i35.AuthBloc>(() => _i35.AuthBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i36.BestProductOfferWatcherBloc>(
      () => _i36.BestProductOfferWatcherBloc(get<_i6.IBestOffersFacade>()));
  gh.factory<_i37.CartActorBloc>(
      () => _i37.CartActorBloc(get<_i9.ICartFacade>()));
  gh.factory<_i38.CartItemBloc>(
      () => _i38.CartItemBloc(get<_i9.ICartFacade>()));
  gh.factory<_i39.FavouritesActorBloc>(
      () => _i39.FavouritesActorBloc(get<_i12.IFavouritesFacade>()));
  gh.factory<_i40.FavouritesWatcherBloc>(
      () => _i40.FavouritesWatcherBloc(get<_i12.IFavouritesFacade>()));
  gh.factory<_i41.SignInFormBloc>(
      () => _i41.SignInFormBloc(get<_i3.IAuthFacade>(), get<_i35.AuthBloc>()));
  return get;
}
