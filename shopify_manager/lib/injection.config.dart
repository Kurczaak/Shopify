// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shopify_domain/auth.dart' as _i5;
import 'package:shopify_domain/core.dart' as _i31;
import 'package:shopify_domain/core/images/photo_picker.dart' as _i11;
import 'package:shopify_domain/core/network/network_info.dart' as _i20;
import 'package:shopify_domain/product.dart' as _i8;
import 'package:shopify_domain/shop/shopify_shop_repository.dart' as _i18;

import 'application/auth/auth_bloc.dart' as _i29;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i28;
import 'application/product/product_form/product_form_bloc.dart' as _i19;
import 'application/product/search_product/search_product_bloc.dart' as _i21;
import 'application/shop/shop_actor/shop_actor_bloc.dart' as _i26;
import 'application/shop/shop_form/shop_form_bloc.dart' as _i22;
import 'application/shop/shop_location_picker/shop_location_picker_bloc.dart'
    as _i23;
import 'application/shop/shop_logo_picker/shop_logo_picker_bloc.dart' as _i24;
import 'application/shop/shop_registration/shop_registration_bloc.dart' as _i30;
import 'application/shop/shop_time_picker/shop_time_picker_bloc.dart' as _i25;
import 'application/shop/shop_watcher/shop_watcher_bloc.dart' as _i27;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'domain/core/images/i_image_facade.dart' as _i9;
import 'domain/product/barcode_scanner/i_barcode_scanner_facade.dart' as _i6;
import 'domain/product/i_open_food_facts_repository.dart' as _i12;
import 'domain/product/i_product_repository.dart' as _i14;
import 'domain/shop/i_shop_repository.dart' as _i16;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i4;
import 'infrastructure/core/images/image_picker_image_facade.dart' as _i10;
import 'infrastructure/product/barcode_scanner/mobile_scanner_barcode_scanner_facade_impl.dart'
    as _i7;
import 'infrastructure/product/open_food_facts_repo_impl.dart' as _i13;
import 'infrastructure/product/product_repository_impl.dart' as _i15;
import 'infrastructure/shop/firebase_shop_repository.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(
      () => _i4.FirebaseAuthFacade(get<_i5.ShopifyAuth>()));
  gh.factory<_i6.IBarcodeScannerFacade>(() =>
      _i7.MobileScannerBarcodeScannerFacadeImpl(get<_i8.BarcodeScanner>()));
  gh.lazySingleton<_i9.IImageFacade>(
      () => _i10.ImagePickerImageFacade(get<_i11.PhotoPicker>()));
  gh.factory<_i12.IOpenFoodFactsRepository>(() =>
      _i13.OpenFoodFactsRepositoryImpl(get<_i8.OpenFoodFactsRepository>()));
  gh.lazySingleton<_i14.IProductRepository>(
      () => _i15.ProductRepostioryImpl(get<_i8.ShopifyProductRepository>()));
  gh.lazySingleton<_i16.IShopRepository>(
      () => _i17.FirebaseShopRepositoryImpl(get<_i18.ShopifyShopRepository>()));
  gh.factory<_i19.ProductFormBloc>(() => _i19.ProductFormBloc(
      imageFacade: get<_i9.IImageFacade>(),
      networkInfo: get<_i20.NetworkInfo>(),
      productRepository: get<_i14.IProductRepository>(),
      shopRepository: get<_i16.IShopRepository>(),
      authFacade: get<_i3.IAuthFacade>()));
  gh.factory<_i21.SearchProductBloc>(
      () => _i21.SearchProductBloc(get<_i12.IOpenFoodFactsRepository>()));
  gh.lazySingleton<_i22.ShopFormBloc>(() => _i22.ShopFormBloc());
  gh.lazySingleton<_i23.ShopLocationPickerBloc>(
      () => _i23.ShopLocationPickerBloc());
  gh.lazySingleton<_i24.ShopLogoPickerBloc>(
      () => _i24.ShopLogoPickerBloc(get<_i9.IImageFacade>()));
  gh.lazySingleton<_i25.ShopTimePickerBloc>(() => _i25.ShopTimePickerBloc());
  gh.factory<_i26.ShoppingActorBloc>(
      () => _i26.ShoppingActorBloc(get<_i16.IShopRepository>()));
  gh.factory<_i27.ShoppingWatcherBloc>(
      () => _i27.ShoppingWatcherBloc(get<_i16.IShopRepository>()));
  gh.factory<_i28.SignInFormBloc>(
      () => _i28.SignInFormBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i29.AuthBloc>(() => _i29.AuthBloc(get<_i3.IAuthFacade>()));
  gh.lazySingleton<_i30.ShopRegistrationBloc>(
      () => _i30.ShopRegistrationBloc(
          authFacade: get<_i3.IAuthFacade>(),
          shopFormBloc: get<_i22.ShopFormBloc>(),
          shopLocationPickerBloc: get<_i23.ShopLocationPickerBloc>(),
          shopTimePickerBloc: get<_i25.ShopTimePickerBloc>(),
          shopLogoPickerBloc: get<_i24.ShopLogoPickerBloc>(),
          locationInfo: get<_i31.LocationInfo>(),
          shopRepository: get<_i16.IShopRepository>()),
      dispose: _i30.disposeBloc);
  return get;
}
