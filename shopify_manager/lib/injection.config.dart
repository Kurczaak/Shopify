// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i21;
import 'package:shopify_domain/auth.dart' as _i8;
import 'package:shopify_domain/core.dart' as _i34;
import 'package:shopify_domain/core/images/photo_picker.dart' as _i14;
import 'package:shopify_domain/product.dart' as _i11;
import 'package:shopify_domain/shop/shopify_shop_repository.dart' as _i19;

import 'application/auth/auth_bloc.dart' as _i32;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i31;
import 'application/product/barcode_camera_scanner/barcode_camera_scanner_bloc.dart'
    as _i3;
import 'application/product/product_form/product_form_bloc.dart' as _i22;
import 'application/product/search_product/search_product_bloc.dart' as _i24;
import 'application/shop/shop_actor/shop_actor_bloc.dart' as _i29;
import 'application/shop/shop_form/shop_form_bloc.dart' as _i25;
import 'application/shop/shop_location_picker/shop_location_picker_bloc.dart'
    as _i26;
import 'application/shop/shop_logo_picker/shop_logo_picker_bloc.dart' as _i27;
import 'application/shop/shop_registration/shop_registration_bloc.dart' as _i33;
import 'application/shop/shop_time_picker/shop_time_picker_bloc.dart' as _i28;
import 'application/shop/shop_watcher/shop_watcher_bloc.dart' as _i30;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'domain/core/images/i_image_facade.dart' as _i12;
import 'domain/product/barcode_scanner/i_barcode_scanner_facade.dart' as _i9;
import 'domain/product/i_open_food_facts_repository.dart' as _i15;
import 'domain/product/i_product_repository.dart' as _i23;
import 'domain/shop/i_shop_repository.dart' as _i17;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i5;
import 'infrastructure/core/images/image_picker_image_facade.dart' as _i13;
import 'infrastructure/core/network/network_info.dart' as _i20;
import 'infrastructure/product/barcode_scanner/mobile_scanner_barcode_scanner_facade_impl.dart'
    as _i10;
import 'infrastructure/product/open_food_facts_repo_impl.dart' as _i16;
import 'infrastructure/shop/firebase_shop_repository.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.BarcodeCameraScannerBloc>(
      () => _i3.BarcodeCameraScannerBloc());
  gh.lazySingleton<_i4.IAuthFacade>(() => _i5.FirebaseAuthFacade(
      get<_i6.FirebaseAuth>(),
      get<_i7.GoogleSignIn>(),
      get<_i8.ShopifyAuth>()));
  gh.factory<_i9.IBarcodeScannerFacade>(() =>
      _i10.MobileScannerBarcodeScannerFacadeImpl(get<_i11.BarcodeScanner>()));
  gh.lazySingleton<_i12.IImageFacade>(
      () => _i13.ImagePickerImageFacade(get<_i14.PhotoPicker>()));
  gh.factory<_i15.IOpenFoodFactsRepository>(() =>
      _i16.OpenFoodFactsRepositoryImpl(get<_i11.OpenFoodFactsRepository>()));
  gh.lazySingleton<_i17.IShopRepository>(
      () => _i18.FirebaseShopRepositoryImpl(get<_i19.ShopifyShopRepository>()));
  gh.factory<_i20.NetworkInfo>(
      () => _i20.NetworkInfoImpl(get<_i21.InternetConnectionChecker>()));
  gh.factory<_i22.ProductFormBloc>(() => _i22.ProductFormBloc(
      imageFacade: get<_i12.IImageFacade>(),
      networkInfo: get<_i20.NetworkInfo>(),
      productRepository: get<_i23.IProductRepository>(),
      shopRepository: get<_i17.IShopRepository>(),
      authFacade: get<_i4.IAuthFacade>()));
  gh.factory<_i24.SearchProductBloc>(
      () => _i24.SearchProductBloc(get<_i15.IOpenFoodFactsRepository>()));
  gh.lazySingleton<_i25.ShopFormBloc>(() => _i25.ShopFormBloc());
  gh.lazySingleton<_i26.ShopLocationPickerBloc>(
      () => _i26.ShopLocationPickerBloc());
  gh.lazySingleton<_i27.ShopLogoPickerBloc>(
      () => _i27.ShopLogoPickerBloc(get<_i12.IImageFacade>()));
  gh.lazySingleton<_i28.ShopTimePickerBloc>(() => _i28.ShopTimePickerBloc());
  gh.factory<_i29.ShoppingActorBloc>(
      () => _i29.ShoppingActorBloc(get<_i17.IShopRepository>()));
  gh.factory<_i30.ShoppingWatcherBloc>(
      () => _i30.ShoppingWatcherBloc(get<_i17.IShopRepository>()));
  gh.factory<_i31.SignInFormBloc>(
      () => _i31.SignInFormBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i32.AuthBloc>(() => _i32.AuthBloc(get<_i4.IAuthFacade>()));
  gh.lazySingleton<_i33.ShopRegistrationBloc>(
      () => _i33.ShopRegistrationBloc(
          authFacade: get<_i4.IAuthFacade>(),
          shopFormBloc: get<_i25.ShopFormBloc>(),
          shopLocationPickerBloc: get<_i26.ShopLocationPickerBloc>(),
          shopTimePickerBloc: get<_i28.ShopTimePickerBloc>(),
          shopLogoPickerBloc: get<_i27.ShopLogoPickerBloc>(),
          locationInfo: get<_i34.LocationInfo>(),
          shopRepository: get<_i17.IShopRepository>()),
      dispose: _i33.disposeBloc);
  return get;
}
