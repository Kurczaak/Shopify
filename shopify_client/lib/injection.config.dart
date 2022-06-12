// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:geoflutterfire/geoflutterfire.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shopify_domain/auth.dart' as _i5;
import 'package:shopify_domain/core/location/shopify_location_facade.dart'
    as _i8;
import 'package:shopify_domain/core/network/network_info.dart' as _i11;
import 'package:shopify_domain/shop/shopify_shop_repository.dart' as _i16;

import 'application/auth/auth_bloc.dart' as _i18;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i19;
import 'application/shop_watcher/shop_watcher_bloc.dart' as _i17;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'domain/core/i_location_facade.dart' as _i6;
import 'domain/product/i_product_repository.dart' as _i9;
import 'domain/shop/i_shop_repository.dart' as _i14;
import 'infrastructure/auth/auth_facade_impl.dart' as _i4;
import 'infrastructure/core/location_facade_impl.dart' as _i7;
import 'infrastructure/product/product_repository_implementation.dart' as _i10;
import 'infrastructure/shop/shop_repository.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(
      () => _i4.AuthFacadeImpl(get<_i5.ShopifyAuth>()));
  gh.lazySingleton<_i6.ILocationFacade>(
      () => _i7.LocationFacadeImpl(get<_i8.ShopifyLocationFacade>()));
  gh.lazySingleton<_i9.IProductRepository>(() => _i10.ProductRepositoryImpl(
      networkInfo: get<_i11.NetworkInfo>(),
      firestore: get<_i12.FirebaseFirestore>(),
      geoflutterfire: get<_i13.Geoflutterfire>()));
  gh.lazySingleton<_i14.IShopRepository>(
      () => _i15.ShopRepositoryImpl(get<_i16.ShopifyShopRepository>()));
  gh.factory<_i17.ShopWatcherBloc>(() => _i17.ShopWatcherBloc(
      get<_i14.IShopRepository>(), get<_i6.ILocationFacade>()));
  gh.lazySingleton<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i19.SignInFormBloc>(
      () => _i19.SignInFormBloc(get<_i3.IAuthFacade>(), get<_i18.AuthBloc>()));
  return get;
}
