// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shopify_domain/auth.dart' as _i8;

import 'application/auth/auth_bloc.dart' as _i12;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i11;
import 'application/shop_watcher/shop_watcher_bloc.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/core/i_location_facade.dart' as _i3;
import 'domain/shop/i_shop_repository.dart' as _i5;
import 'infrastructure/auth/auth_facade_impl.dart' as _i10;
import 'infrastructure/auth/shopify_auth_injectable_module.dart' as _i13;
import 'infrastructure/core/location_facade_impl.dart' as _i4;
import 'infrastructure/shop/shop_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final shopifyInjectableModule = _$ShopifyInjectableModule();
  gh.lazySingleton<_i3.ILocationFacade>(() => _i4.LocationFacadeImpl());
  gh.lazySingleton<_i5.IShopRepository>(() => _i6.ShopRepositoryImpl());
  gh.factory<_i7.ShopWatcherBloc>(() => _i7.ShopWatcherBloc(
      get<_i5.IShopRepository>(), get<_i3.ILocationFacade>()));
  gh.lazySingleton<_i8.ShopifyAuth>(() => shopifyInjectableModule.shopifyAuth);
  gh.lazySingleton<_i9.IAuthFacade>(
      () => _i10.AuthFacadeImpl(get<_i8.ShopifyAuth>()));
  gh.factory<_i11.SignInFormBloc>(
      () => _i11.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i9.IAuthFacade>()));
  return get;
}

class _$ShopifyInjectableModule extends _i13.ShopifyInjectableModule {}
