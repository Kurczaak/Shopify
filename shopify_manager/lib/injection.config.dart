// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shopify_domain/auth.dart' as _i5;
import 'package:shopify_domain/core.dart' as _i30;
import 'package:shopify_domain/core/images/photo_picker.dart' as _i11;
import 'package:shopify_domain/core/network/network_info.dart' as _i18;
import 'package:shopify_domain/product.dart' as _i8;
import 'package:shopify_domain/shop/shopify_shop_repository.dart' as _i16;

import 'application/auth/auth_bloc.dart' as _i28;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i27;
import 'application/product/product_form/product_form_bloc.dart' as _i17;
import 'application/product/search_product/search_product_bloc.dart' as _i20;
import 'application/shop/shop_actor/shop_actor_bloc.dart' as _i25;
import 'application/shop/shop_form/shop_form_bloc.dart' as _i21;
import 'application/shop/shop_location_picker/shop_location_picker_bloc.dart'
    as _i22;
import 'application/shop/shop_logo_picker/shop_logo_picker_bloc.dart' as _i23;
import 'application/shop/shop_registration/shop_registration_bloc.dart' as _i29;
import 'application/shop/shop_time_picker/shop_time_picker_bloc.dart' as _i24;
import 'application/shop/shop_watcher/shop_watcher_bloc.dart' as _i26;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'domain/core/images/i_image_facade.dart' as _i9;
import 'domain/product/barcode_scanner/i_barcode_scanner_facade.dart' as _i6;
import 'domain/product/i_open_food_facts_repository.dart' as _i12;
import 'domain/product/i_product_repository.dart' as _i19;
import 'domain/shop/i_shop_repository.dart' as _i14;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i4;
import 'infrastructure/core/images/image_picker_image_facade.dart' as _i10;
import 'infrastructure/product/barcode_scanner/mobile_scanner_barcode_scanner_facade_impl.dart'
    as _i7;
import 'infrastructure/product/open_food_facts_repo_impl.dart' as _i13;
import 'infrastructure/shop/firebase_shop_repository.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i14.IShopRepository>(
      () => _i15.FirebaseShopRepositoryImpl(get<_i16.ShopifyShopRepository>()));
  gh.factory<_i17.ProductFormBloc>(() => _i17.ProductFormBloc(
      imageFacade: get<_i9.IImageFacade>(),
      networkInfo: get<_i18.NetworkInfo>(),
      productRepository: get<_i19.IProductRepository>(),
      shopRepository: get<_i14.IShopRepository>(),
      authFacade: get<_i3.IAuthFacade>()));
  gh.factory<_i20.SearchProductBloc>(
      () => _i20.SearchProductBloc(get<_i12.IOpenFoodFactsRepository>()));
  gh.lazySingleton<_i21.ShopFormBloc>(() => _i21.ShopFormBloc());
  gh.lazySingleton<_i22.ShopLocationPickerBloc>(
      () => _i22.ShopLocationPickerBloc());
  gh.lazySingleton<_i23.ShopLogoPickerBloc>(
      () => _i23.ShopLogoPickerBloc(get<_i9.IImageFacade>()));
  gh.lazySingleton<_i24.ShopTimePickerBloc>(() => _i24.ShopTimePickerBloc());
  gh.factory<_i25.ShoppingActorBloc>(
      () => _i25.ShoppingActorBloc(get<_i14.IShopRepository>()));
  gh.factory<_i26.ShoppingWatcherBloc>(
      () => _i26.ShoppingWatcherBloc(get<_i14.IShopRepository>()));
  gh.factory<_i27.SignInFormBloc>(
      () => _i27.SignInFormBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i28.AuthBloc>(() => _i28.AuthBloc(get<_i3.IAuthFacade>()));
  gh.lazySingleton<_i29.ShopRegistrationBloc>(
      () => _i29.ShopRegistrationBloc(
          authFacade: get<_i3.IAuthFacade>(),
          shopFormBloc: get<_i21.ShopFormBloc>(),
          shopLocationPickerBloc: get<_i22.ShopLocationPickerBloc>(),
          shopTimePickerBloc: get<_i24.ShopTimePickerBloc>(),
          shopLogoPickerBloc: get<_i23.ShopLogoPickerBloc>(),
          locationInfo: get<_i30.LocationInfo>(),
          shopRepository: get<_i14.IShopRepository>()),
      dispose: _i29.disposeBloc);
  return get;
}
