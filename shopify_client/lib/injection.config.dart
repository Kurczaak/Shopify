// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i11;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i10;
import 'application/shop_watcher/shop_watcher_bloc.dart' as _i9;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'domain/core/i_location_facade.dart' as _i5;
import 'domain/shop/i_shop_repository.dart' as _i7;
import 'infrastructure/auth/auth_facade_impl.dart' as _i4;
import 'infrastructure/core/location_facade_impl.dart' as _i6;
import 'infrastructure/shop/shop_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(() => _i4.AuthFacadeImpl());
  gh.lazySingleton<_i5.ILocationFacade>(() => _i6.LocationFacadeImpl());
  gh.lazySingleton<_i7.IShopRepository>(() => _i8.ShopRepositoryImpl());
  gh.factory<_i9.ShopWatcherBloc>(() => _i9.ShopWatcherBloc(
      get<_i7.IShopRepository>(), get<_i5.ILocationFacade>()));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i3.IAuthFacade>()));
  return get;
}
