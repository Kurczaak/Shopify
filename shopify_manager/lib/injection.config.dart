// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:geocoding/geocoding.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:image_picker/image_picker.dart' as _i15;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i16;

import 'application/auth/auth_bloc.dart' as _i25;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i24;
import 'application/product/barcode_camera_scanner/barcode_camera_scanner_bloc.dart'
    as _i3;
import 'application/product/product_form/product_form_bloc.dart' as _i32;
import 'application/product/search_product/search_product_bloc.dart' as _i33;
import 'application/shop/shop_actor/shop_actor_bloc.dart' as _i22;
import 'application/shop/shop_form/shop_form_bloc.dart' as _i19;
import 'application/shop/shop_location_picker/shop_location_picker_bloc.dart'
    as _i20;
import 'application/shop/shop_logo_picker/shop_logo_picker_bloc.dart' as _i34;
import 'application/shop/shop_registration/shop_registration_bloc.dart' as _i35;
import 'application/shop/shop_time_picker/shop_time_picker_bloc.dart' as _i21;
import 'application/shop/shop_watcher/shop_watcher_bloc.dart' as _i23;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/core/images/i_image_facade.dart' as _i26;
import 'domain/core/location/location_info.dart' as _i17;
import 'domain/product/barcode_scanner/i_barcode_scanner_facade.dart' as _i11;
import 'domain/product/i_product_repository.dart' as _i30;
import 'domain/product/open_food_facts/i_open_food_facts_repository.dart'
    as _i28;
import 'domain/shop/i_shop_repository.dart' as _i13;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/core/images/image_picker_image_facade.dart' as _i27;
import 'infrastructure/core/images/image_picker_injectable_module.dart' as _i38;
import 'infrastructure/core/injectable_module.dart' as _i36;
import 'infrastructure/core/location/location_injectable_module.dart' as _i37;
import 'infrastructure/core/network/network_info.dart' as _i18;
import 'infrastructure/product/barcode_scanner/mobile_scanner_barcode_scanner_facade_impl.dart'
    as _i12;
import 'infrastructure/product/firebase_product_repository.dart' as _i31;
import 'infrastructure/product/open_food_facts/open_food_facts_repository_impl.dart'
    as _i29;
import 'infrastructure/shop/firebase_shop_repository.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final geocodingInjectableModule = _$GeocodingInjectableModule();
  final imagePikcerInjectableModule = _$ImagePikcerInjectableModule();
  gh.factory<_i3.BarcodeCameraScannerBloc>(
      () => _i3.BarcodeCameraScannerBloc());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i7.GeocodingPlatform>(
      () => geocodingInjectableModule.geocodingPlatform);
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
      get<_i4.FirebaseAuth>(), get<_i8.GoogleSignIn>()));
  gh.factory<_i11.IBarcodeScannerFacade>(
      () => _i12.MobileScannerBarcodeScannerFacadeImpl());
  gh.lazySingleton<_i13.IShopRepository>(() => _i14.FirebaseShopRepositoryImpl(
      get<_i5.FirebaseFirestore>(), get<_i6.FirebaseStorage>()));
  gh.lazySingleton<_i15.ImagePicker>(
      () => imagePikcerInjectableModule.imagePicker);
  gh.lazySingleton<_i16.InternetConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<_i17.LocationInfo>(
      () => _i17.LocationInfoImpl(get<_i7.GeocodingPlatform>()));
  gh.factory<_i18.NetworkInfo>(
      () => _i18.NetworkInfoImpl(get<_i16.InternetConnectionChecker>()));
  gh.lazySingleton<_i19.ShopFormBloc>(() => _i19.ShopFormBloc());
  gh.lazySingleton<_i20.ShopLocationPickerBloc>(
      () => _i20.ShopLocationPickerBloc());
  gh.lazySingleton<_i21.ShopTimePickerBloc>(() => _i21.ShopTimePickerBloc());
  gh.factory<_i22.ShoppingActorBloc>(
      () => _i22.ShoppingActorBloc(get<_i13.IShopRepository>()));
  gh.factory<_i23.ShoppingWatcherBloc>(
      () => _i23.ShoppingWatcherBloc(get<_i13.IShopRepository>()));
  gh.factory<_i24.SignInFormBloc>(
      () => _i24.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i25.AuthBloc>(() => _i25.AuthBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i26.IImageFacade>(
      () => _i27.ImagePickerImageFacade(get<_i15.ImagePicker>()));
  gh.factory<_i28.IOpenFoodFactsRepository>(
      () => _i29.OpenFoodFactsRepositoryImpl(get<_i18.NetworkInfo>()));
  gh.lazySingleton<_i30.IProductRepository>(() =>
      _i31.FirebaseProductRepositoryImpl(get<_i5.FirebaseFirestore>(),
          get<_i6.FirebaseStorage>(), get<_i18.NetworkInfo>()));
  gh.factory<_i32.ProductFormBloc>(() => _i32.ProductFormBloc(
      imageFacade: get<_i26.IImageFacade>(),
      networkInfo: get<_i18.NetworkInfo>(),
      productRepository: get<_i30.IProductRepository>(),
      shopRepository: get<_i13.IShopRepository>(),
      authFacade: get<_i9.IAuthFacade>()));
  gh.factory<_i33.SearchProductBloc>(
      () => _i33.SearchProductBloc(get<_i28.IOpenFoodFactsRepository>()));
  gh.lazySingleton<_i34.ShopLogoPickerBloc>(
      () => _i34.ShopLogoPickerBloc(get<_i26.IImageFacade>()));
  gh.lazySingleton<_i35.ShopRegistrationBloc>(
      () => _i35.ShopRegistrationBloc(
          authFacade: get<_i9.IAuthFacade>(),
          shopFormBloc: get<_i19.ShopFormBloc>(),
          shopLocationPickerBloc: get<_i20.ShopLocationPickerBloc>(),
          shopTimePickerBloc: get<_i21.ShopTimePickerBloc>(),
          shopLogoPickerBloc: get<_i34.ShopLogoPickerBloc>(),
          locationInfo: get<_i17.LocationInfo>(),
          shopRepository: get<_i13.IShopRepository>()),
      dispose: _i35.disposeBloc);
  return get;
}

class _$FirebaseInjectableModule extends _i36.FirebaseInjectableModule {}

class _$GeocodingInjectableModule extends _i37.GeocodingInjectableModule {}

class _$ImagePikcerInjectableModule extends _i38.ImagePikcerInjectableModule {}
