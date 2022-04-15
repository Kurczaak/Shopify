// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart' as _i6;
import 'package:geocoding/geocoding.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:image_picker/image_picker.dart' as _i13;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i14;

import 'application/auth/auth_bloc.dart' as _i23;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i22;
import 'application/product/product_form/product_form_bloc.dart' as _i29;
import 'application/shop/shop_actor/shop_actor_bloc.dart' as _i20;
import 'application/shop/shop_form/shop_form_bloc.dart' as _i17;
import 'application/shop/shop_location_picker/shop_location_picker_bloc.dart'
    as _i18;
import 'application/shop/shop_logo_picker/shop_logo_picker_bloc.dart' as _i30;
import 'application/shop/shop_registration/shop_registration_bloc.dart' as _i31;
import 'application/shop/shop_time_picker/shop_time_picker_bloc.dart' as _i19;
import 'application/shop/shop_watcher/shop_watcher_bloc.dart' as _i21;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/core/images/i_image_facade.dart' as _i25;
import 'domain/core/location/location_info.dart' as _i15;
import 'domain/product/i_product_repository.dart' as _i27;
import 'domain/shop/i_shop_repository.dart' as _i11;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/core/images/image_picker_image_facade.dart' as _i26;
import 'infrastructure/core/images/image_picker_injectable_module.dart' as _i35;
import 'infrastructure/core/injectable_module.dart' as _i32;
import 'infrastructure/core/location/location_injectable_module.dart' as _i34;
import 'infrastructure/core/network/network_info.dart' as _i16;
import 'infrastructure/product/barcode_scanner/flutter_barcode_scanner_facade_impl.dart'
    as _i24;
import 'infrastructure/product/barcode_scanner/flutter_barcode_scanner_injectable_module.dart'
    as _i33;
import 'infrastructure/product/firebase_product_repository.dart' as _i28;
import 'infrastructure/shop/firebase_shop_repository.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final flutterBarcodeScannerInjectableModule =
      _$FlutterBarcodeScannerInjectableModule();
  final geocodingInjectableModule = _$GeocodingInjectableModule();
  final imagePikcerInjectableModule = _$ImagePikcerInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i6.FlutterBarcodeScanner>(
      () => flutterBarcodeScannerInjectableModule.barcodeScanner);
  gh.lazySingleton<_i7.GeocodingPlatform>(
      () => geocodingInjectableModule.geocodingPlatform);
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i8.GoogleSignIn>()));
  gh.lazySingleton<_i11.IShopRepository>(() => _i12.FirebaseShopRepositoryImpl(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i13.ImagePicker>(
      () => imagePikcerInjectableModule.imagePicker);
  gh.lazySingleton<_i14.InternetConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<_i15.LocationInfo>(
      () => _i15.LocationInfoImpl(get<_i7.GeocodingPlatform>()));
  gh.factory<_i16.NetworkInfo>(
      () => _i16.NetworkInfoImpl(get<_i14.InternetConnectionChecker>()));
  gh.lazySingleton<_i17.ShopFormBloc>(() => _i17.ShopFormBloc());
  gh.lazySingleton<_i18.ShopLocationPickerBloc>(
      () => _i18.ShopLocationPickerBloc());
  gh.lazySingleton<_i19.ShopTimePickerBloc>(() => _i19.ShopTimePickerBloc());
  gh.factory<_i20.ShoppingActorBloc>(
      () => _i20.ShoppingActorBloc(get<_i11.IShopRepository>()));
  gh.factory<_i21.ShoppingWatcherBloc>(
      () => _i21.ShoppingWatcherBloc(get<_i11.IShopRepository>()));
  gh.factory<_i22.SignInFormBloc>(
      () => _i22.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i23.AuthBloc>(() => _i23.AuthBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i24.BarcodeScannerFacadeImpl>(
      () => _i24.BarcodeScannerFacadeImpl(get<_i6.FlutterBarcodeScanner>()));
  gh.lazySingleton<_i25.IImageFacade>(
      () => _i26.ImagePickerImageFacade(get<_i13.ImagePicker>()));
  gh.lazySingleton<_i27.IProductRepository>(() =>
      _i28.FirebaseProductRepositoryImpl(get<_i4.FirebaseFirestore>(),
          get<_i5.FirebaseStorage>(), get<_i16.NetworkInfo>()));
  gh.factory<_i29.ProductFormBloc>(() => _i29.ProductFormBloc(
      imageFacade: get<_i25.IImageFacade>(),
      networkInfo: get<_i16.NetworkInfo>(),
      productRepository: get<_i27.IProductRepository>(),
      shopRepository: get<_i11.IShopRepository>(),
      authFacade: get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i30.ShopLogoPickerBloc>(
      () => _i30.ShopLogoPickerBloc(get<_i25.IImageFacade>()));
  gh.lazySingleton<_i31.ShopRegistrationBloc>(
      () => _i31.ShopRegistrationBloc(
          shopFormBloc: get<_i17.ShopFormBloc>(),
          shopLocationPickerBloc: get<_i18.ShopLocationPickerBloc>(),
          shopTimePickerBloc: get<_i19.ShopTimePickerBloc>(),
          shopLogoPickerBloc: get<_i30.ShopLogoPickerBloc>(),
          locationInfo: get<_i15.LocationInfo>(),
          shopRepository: get<_i11.IShopRepository>()),
      dispose: _i31.disposeBloc);
  return get;
}

class _$FirebaseInjectableModule extends _i32.FirebaseInjectableModule {}

class _$FlutterBarcodeScannerInjectableModule
    extends _i33.FlutterBarcodeScannerInjectableModule {}

class _$GeocodingInjectableModule extends _i34.GeocodingInjectableModule {}

class _$ImagePikcerInjectableModule extends _i35.ImagePikcerInjectableModule {}
