// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i15;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:image_picker/image_picker.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i18;
import 'package:shopify_domain/core.dart' as _i33;

import 'application/auth/auth_bloc.dart' as _i28;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i27;
import 'application/product/barcode_camera_scanner/barcode_camera_scanner_bloc.dart'
    as _i3;
import 'application/product/product_form/product_form_bloc.dart' as _i19;
import 'application/product/search_product/search_product_bloc.dart' as _i31;
import 'application/shop/shop_actor/shop_actor_bloc.dart' as _i25;
import 'application/shop/shop_form/shop_form_bloc.dart' as _i21;
import 'application/shop/shop_location_picker/shop_location_picker_bloc.dart'
    as _i22;
import 'application/shop/shop_logo_picker/shop_logo_picker_bloc.dart' as _i23;
import 'application/shop/shop_registration/shop_registration_bloc.dart' as _i32;
import 'application/shop/shop_time_picker/shop_time_picker_bloc.dart' as _i24;
import 'application/shop/shop_watcher/shop_watcher_bloc.dart' as _i26;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'domain/core/images/i_image_facade.dart' as _i10;
import 'domain/product/barcode_scanner/i_barcode_scanner_facade.dart' as _i8;
import 'domain/product/i_open_food_facts_repository.dart' as _i29;
import 'domain/product/i_product_repository.dart' as _i20;
import 'domain/shop/i_shop_repository.dart' as _i13;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i5;
import 'infrastructure/core/images/image_picker_image_facade.dart' as _i11;
import 'infrastructure/core/network/network_info.dart' as _i17;
import 'infrastructure/product/barcode_scanner/mobile_scanner_barcode_scanner_facade_impl.dart'
    as _i9;
import 'infrastructure/product/open_food_facts_repo_impl.dart' as _i30;
import 'infrastructure/shop/firebase_shop_repository.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.BarcodeCameraScannerBloc>(
      () => _i3.BarcodeCameraScannerBloc());
  gh.lazySingleton<_i4.IAuthFacade>(() =>
      _i5.FirebaseAuthFacade(get<_i6.FirebaseAuth>(), get<_i7.GoogleSignIn>()));
  gh.factory<_i8.IBarcodeScannerFacade>(
      () => _i9.MobileScannerBarcodeScannerFacadeImpl());
  gh.lazySingleton<_i10.IImageFacade>(
      () => _i11.ImagePickerImageFacade(get<_i12.ImagePicker>()));
  gh.lazySingleton<_i13.IShopRepository>(() => _i14.FirebaseShopRepositoryImpl(
      get<_i15.FirebaseFirestore>(), get<_i16.FirebaseStorage>()));
  gh.factory<_i17.NetworkInfo>(
      () => _i17.NetworkInfoImpl(get<_i18.InternetConnectionChecker>()));
  gh.factory<_i19.ProductFormBloc>(() => _i19.ProductFormBloc(
      imageFacade: get<_i10.IImageFacade>(),
      networkInfo: get<_i17.NetworkInfo>(),
      productRepository: get<_i20.IProductRepository>(),
      shopRepository: get<_i13.IShopRepository>(),
      authFacade: get<_i4.IAuthFacade>()));
  gh.lazySingleton<_i21.ShopFormBloc>(() => _i21.ShopFormBloc());
  gh.lazySingleton<_i22.ShopLocationPickerBloc>(
      () => _i22.ShopLocationPickerBloc());
  gh.lazySingleton<_i23.ShopLogoPickerBloc>(
      () => _i23.ShopLogoPickerBloc(get<_i10.IImageFacade>()));
  gh.lazySingleton<_i24.ShopTimePickerBloc>(() => _i24.ShopTimePickerBloc());
  gh.factory<_i25.ShoppingActorBloc>(
      () => _i25.ShoppingActorBloc(get<_i13.IShopRepository>()));
  gh.factory<_i26.ShoppingWatcherBloc>(
      () => _i26.ShoppingWatcherBloc(get<_i13.IShopRepository>()));
  gh.factory<_i27.SignInFormBloc>(
      () => _i27.SignInFormBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i28.AuthBloc>(() => _i28.AuthBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i29.IOpenFoodFactsRepository>(
      () => _i30.OpenFoodFactsRepositoryImpl(get<_i17.NetworkInfo>()));
  gh.factory<_i31.SearchProductBloc>(
      () => _i31.SearchProductBloc(get<_i29.IOpenFoodFactsRepository>()));
  gh.lazySingleton<_i32.ShopRegistrationBloc>(
      () => _i32.ShopRegistrationBloc(
          authFacade: get<_i4.IAuthFacade>(),
          shopFormBloc: get<_i21.ShopFormBloc>(),
          shopLocationPickerBloc: get<_i22.ShopLocationPickerBloc>(),
          shopTimePickerBloc: get<_i24.ShopTimePickerBloc>(),
          shopLogoPickerBloc: get<_i23.ShopLogoPickerBloc>(),
          locationInfo: get<_i33.LocationInfo>(),
          shopRepository: get<_i13.IShopRepository>()),
      dispose: _i32.disposeBloc);
  return get;
}
