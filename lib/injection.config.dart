// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:geocoding/geocoding.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:image_picker/image_picker.dart' as _i14;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i15;

import 'application/auth/auth_bloc.dart' as _i24;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i23;
import 'application/shop/shop_actor/shop_actor_bloc.dart' as _i21;
import 'application/shop/shop_form/shop_form_bloc.dart' as _i18;
import 'application/shop/shop_location_picker/shop_location_picker_bloc.dart'
    as _i19;
import 'application/shop/shop_logo_picker/shop_logo_picker_bloc.dart' as _i27;
import 'application/shop/shop_registration/shop_registration_bloc.dart' as _i28;
import 'application/shop/shop_time_picker/shop_time_picker_bloc.dart' as _i20;
import 'application/shop/shop_watcher/shop_watcher_bloc.dart' as _i22;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/core/images/i_image_facade.dart' as _i25;
import 'domain/core/location/location_info.dart' as _i16;
import 'domain/product/i_product_repository.dart' as _i10;
import 'domain/shop/i_shop_repository.dart' as _i12;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/core/images/image_picker_image_facade.dart' as _i26;
import 'infrastructure/core/images/image_picker_injectable_module.dart' as _i31;
import 'infrastructure/core/injectable_module.dart' as _i29;
import 'infrastructure/core/location/location_injectable_module.dart' as _i30;
import 'infrastructure/core/network/network_info.dart' as _i17;
import 'infrastructure/product/firebase_product_repository.dart' as _i11;
import 'infrastructure/shop/firebase_shop_repository.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i6.GeocodingPlatform>(
      () => geocodingInjectableModule.geocodingPlatform);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthFacade>(() =>
      _i9.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i7.GoogleSignIn>()));
  gh.lazySingleton<_i10.IProductRepository>(() =>
      _i11.FirebaseProductRepositoryImpl(
          get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i12.IShopRepository>(() => _i13.FirebaseShopRepositoryImpl(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i14.ImagePicker>(
      () => imagePikcerInjectableModule.imagePicker);
  gh.lazySingleton<_i15.InternetConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<_i16.LocationInfo>(
      () => _i16.LocationInfoImpl(get<_i6.GeocodingPlatform>()));
  gh.factory<_i17.NetworkInfo>(
      () => _i17.NetworkInfoImpl(get<_i15.InternetConnectionChecker>()));
  gh.lazySingleton<_i18.ShopFormBloc>(() => _i18.ShopFormBloc());
  gh.lazySingleton<_i19.ShopLocationPickerBloc>(
      () => _i19.ShopLocationPickerBloc());
  gh.lazySingleton<_i20.ShopTimePickerBloc>(() => _i20.ShopTimePickerBloc());
  gh.factory<_i21.ShoppingActorBloc>(
      () => _i21.ShoppingActorBloc(get<_i12.IShopRepository>()));
  gh.factory<_i22.ShoppingWatcherBloc>(
      () => _i22.ShoppingWatcherBloc(get<_i12.IShopRepository>()));
  gh.factory<_i23.SignInFormBloc>(
      () => _i23.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i24.AuthBloc>(() => _i24.AuthBloc(get<_i8.IAuthFacade>()));
  gh.lazySingleton<_i25.IImageFacade>(
      () => _i26.ImagePickerImageFacade(get<_i14.ImagePicker>()));
  gh.lazySingleton<_i27.ShopLogoPickerBloc>(
      () => _i27.ShopLogoPickerBloc(get<_i25.IImageFacade>()));
  gh.lazySingleton<_i28.ShopRegistrationBloc>(
      () => _i28.ShopRegistrationBloc(
          shopFormBloc: get<_i18.ShopFormBloc>(),
          shopLocationPickerBloc: get<_i19.ShopLocationPickerBloc>(),
          shopTimePickerBloc: get<_i20.ShopTimePickerBloc>(),
          shopLogoPickerBloc: get<_i27.ShopLogoPickerBloc>(),
          locationInfo: get<_i16.LocationInfo>(),
          shopRepository: get<_i12.IShopRepository>()),
      dispose: _i28.disposeBloc);
  return get;
}

class _$FirebaseInjectableModule extends _i29.FirebaseInjectableModule {}

class _$GeocodingInjectableModule extends _i30.GeocodingInjectableModule {}

class _$ImagePikcerInjectableModule extends _i31.ImagePikcerInjectableModule {}
