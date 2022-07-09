// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shopify_domain/auth.dart' as _i5;
import 'package:shopify_domain/cart/shopify_cart_facade.dart' as _i8;
import 'package:shopify_domain/core/location/shopify_location_facade.dart'
    as _i11;
import 'package:shopify_domain/core/network/network_info.dart' as _i22;
import 'package:shopify_domain/product.dart' as _i14;
import 'package:shopify_domain/product/shopify_product_searcher.dart' as _i15;
import 'package:shopify_domain/shop/shopify_shop_repository.dart' as _i18;

import 'application/auth/auth_bloc.dart' as _i24;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i27;
import 'application/cart_and_favourite/cart_and_favourite_bloc.dart' as _i25;
import 'application/cart_item/cart_item_bloc.dart' as _i26;
import 'application/product_preview/product_preview_bloc.dart' as _i19;
import 'application/product_watcher/product_watcher_bloc.dart' as _i20;
import 'application/shop_picker/shop_picker_bloc.dart' as _i21;
import 'application/user_carts/user_carts_bloc.dart' as _i23;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'domain/cart/I_cart_facade.dart' as _i6;
import 'domain/core/i_location_facade.dart' as _i9;
import 'domain/product/i_product_repository.dart' as _i12;
import 'domain/shop/i_shop_repository.dart' as _i16;
import 'infrastructure/auth/auth_facade_impl.dart' as _i4;
import 'infrastructure/cart/cart_facade_impl.dart' as _i7;
import 'infrastructure/core/location_facade_impl.dart' as _i10;
import 'infrastructure/product/product_repository_implementation.dart' as _i13;
import 'infrastructure/shop/shop_repository.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(
      () => _i4.AuthFacadeImpl(get<_i5.ShopifyAuth>()));
  gh.lazySingleton<_i6.ICartFacade>(
      () => _i7.CartFacadeImpl(get<_i8.ShopifyCartFacade>()));
  gh.lazySingleton<_i9.ILocationFacade>(
      () => _i10.LocationFacadeImpl(get<_i11.ShopifyLocationFacade>()));
  gh.lazySingleton<_i12.IProductRepository>(() => _i13.ProductRepositoryImpl(
      productRepository: get<_i14.ShopifyProductRepository>(),
      productSearcher: get<_i15.ShopifyProductSearcher>()));
  gh.lazySingleton<_i16.IShopRepository>(
      () => _i17.ShopRepositoryImpl(get<_i18.ShopifyShopRepository>()));
  gh.factory<_i19.ProductPreviewBloc>(
      () => _i19.ProductPreviewBloc(get<_i12.IProductRepository>()));
  gh.factory<_i20.ProductWatcherBloc>(() =>
      _i20.ProductWatcherBloc(repository: get<_i12.IProductRepository>()));
  gh.factory<_i21.ShopPickerBloc>(() => _i21.ShopPickerBloc(
      networkInfo: get<_i22.NetworkInfo>(),
      location: get<_i9.ILocationFacade>(),
      shopRepository: get<_i16.IShopRepository>()));
  gh.factory<_i23.UserCartsBloc>(() =>
      _i23.UserCartsBloc(get<_i6.ICartFacade>(), get<_i22.NetworkInfo>()));
  gh.lazySingleton<_i24.AuthBloc>(() => _i24.AuthBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i25.CartAndFavouriteBloc>(
      () => _i25.CartAndFavouriteBloc(get<_i6.ICartFacade>()));
  gh.factory<_i26.CartItemBloc>(
      () => _i26.CartItemBloc(get<_i6.ICartFacade>()));
  gh.factory<_i27.SignInFormBloc>(
      () => _i27.SignInFormBloc(get<_i3.IAuthFacade>(), get<_i24.AuthBloc>()));
  return get;
}
