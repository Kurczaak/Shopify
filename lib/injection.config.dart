// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:geocoding/geocoding.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:image_picker/image_picker.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i19;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i18;
import 'application/shopping/shop_form/shop_form_bloc.dart' as _i13;
import 'application/shopping/shop_location_picker/shop_location_picker_bloc.dart'
    as _i14;
import 'application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart'
    as _i22;
import 'application/shopping/shop_registration/shop_registration_bloc.dart'
    as _i23;
import 'application/shopping/shop_time_picker/shop_time_picker_bloc.dart'
    as _i15;
import 'application/shopping/shopping_actor/shopping_actor_bloc.dart' as _i16;
import 'application/shopping/shopping_watcher/shopping_watcher_bloc.dart'
    as _i17;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/core/images/i_image_facade.dart' as _i20;
import 'domain/core/location/location_info.dart' as _i12;
import 'domain/shopping/i_shop_repository.dart' as _i9;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart' as _i24;
import 'infrastructure/core/images/image_picker_image_facade.dart' as _i21;
import 'infrastructure/core/images/image_picker_injectable_module.dart' as _i26;
import 'infrastructure/core/location/location_injectable_module.dart' as _i25;
import 'infrastructure/shopping/shop_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final geocodingInjectableModule = _$GeocodingInjectableModule();
  final imagePikcerInjectableModule = _$ImagePikcerInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GeocodingPlatform>(
      () => geocodingInjectableModule.geocodingPlatform);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(() =>
      _i8.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i9.IShopRepository>(
      () => _i10.ShopRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i11.ImagePicker>(
      () => imagePikcerInjectableModule.imagePicker);
  gh.lazySingleton<_i12.LocationInfo>(
      () => _i12.LocationInfoImpl(get<_i5.GeocodingPlatform>()));
  gh.singleton<_i13.ShopFormBloc>(_i13.ShopFormBloc());
  gh.singleton<_i14.ShopLocationPickerBloc>(_i14.ShopLocationPickerBloc());
  gh.singleton<_i15.ShopTimePickerBloc>(_i15.ShopTimePickerBloc());
  gh.factory<_i16.ShoppingActorBloc>(
      () => _i16.ShoppingActorBloc(get<_i9.IShopRepository>()));
  gh.factory<_i17.ShoppingWatcherBloc>(
      () => _i17.ShoppingWatcherBloc(get<_i9.IShopRepository>()));
  gh.factory<_i18.SignInFormBloc>(
      () => _i18.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(get<_i7.IAuthFacade>()));
  gh.lazySingleton<_i20.IImageFacade>(
      () => _i21.ImagePickerImageFacade(get<_i11.ImagePicker>()));
  gh.singleton<_i22.ShopLogoPickerBloc>(
      _i22.ShopLogoPickerBloc(get<_i20.IImageFacade>()));
  gh.singleton<_i23.ShopRegistrationBloc>(_i23.ShopRegistrationBloc(
      shopFormBloc: get<_i13.ShopFormBloc>(),
      shopLocationPickerBloc: get<_i14.ShopLocationPickerBloc>(),
      shopTimePickerBloc: get<_i15.ShopTimePickerBloc>(),
      shopLogoPickerBloc: get<_i22.ShopLogoPickerBloc>(),
      locationInfo: get<_i12.LocationInfo>()));
  return get;
}

class _$FirebaseInjectableModule extends _i24.FirebaseInjectableModule {}

class _$GeocodingInjectableModule extends _i25.GeocodingInjectableModule {}

class _$ImagePikcerInjectableModule extends _i26.ImagePikcerInjectableModule {}
