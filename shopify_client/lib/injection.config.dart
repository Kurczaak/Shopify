// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shopify_domain/auth.dart' as _i10;
import 'package:shopify_domain/core.dart' as _i11;
import 'package:shopify_domain/core/location/shopify_location_facade.dart'
    as _i5;
import 'package:shopify_domain/shop.dart' as _i12;
import 'package:shopify_domain/shop/shopify_shop_repository.dart' as _i8;

import 'application/auth/auth_bloc.dart' as _i16;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i15;
import 'application/shop_watcher/shop_watcher_bloc.dart' as _i9;
import 'domain/auth/i_auth_facade.dart' as _i13;
import 'domain/core/i_location_facade.dart' as _i3;
import 'domain/shop/i_shop_repository.dart' as _i6;
import 'infrastructure/auth/auth_facade_impl.dart' as _i14;
import 'infrastructure/auth/shopify_auth_injectable_module.dart' as _i17;
import 'infrastructure/core/location_facade_impl.dart' as _i4;
import 'infrastructure/core/shopify_location_injectable_module.dart' as _i18;
import 'infrastructure/shop/shop_repository.dart' as _i7;
import 'infrastructure/shop/shop_repository_injectable_module.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final shopifyInjectableModule = _$ShopifyInjectableModule();
  final shopifyLocationInjectableModule = _$ShopifyLocationInjectableModule();
  final shopRepositoryInjectableModule = _$ShopRepositoryInjectableModule();
  gh.lazySingleton<_i3.ILocationFacade>(
      () => _i4.LocationFacadeImpl(get<_i5.ShopifyLocationFacade>()));
  gh.lazySingleton<_i6.IShopRepository>(
      () => _i7.ShopRepositoryImpl(get<_i8.ShopifyShopRepository>()));
  gh.factory<_i9.ShopWatcherBloc>(() => _i9.ShopWatcherBloc(
      get<_i6.IShopRepository>(), get<_i3.ILocationFacade>()));
  gh.lazySingleton<_i10.ShopifyAuth>(() => shopifyInjectableModule.shopifyAuth);
  gh.lazySingleton<_i11.ShopifyLocationFacade>(
      () => shopifyLocationInjectableModule.shopifyLocation);
  gh.lazySingleton<_i12.ShopifyShopRepository>(
      () => shopRepositoryInjectableModule.shopifyShopRepository);
  gh.lazySingleton<_i13.IAuthFacade>(
      () => _i14.AuthFacadeImpl(get<_i10.ShopifyAuth>()));
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i13.IAuthFacade>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(get<_i13.IAuthFacade>()));
  return get;
}

class _$ShopifyInjectableModule extends _i17.ShopifyInjectableModule {}

class _$ShopifyLocationInjectableModule
    extends _i18.ShopifyLocationInjectableModule {}

class _$ShopRepositoryInjectableModule
    extends _i19.ShopRepositoryInjectableModule {}
