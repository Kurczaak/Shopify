// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shopify_domain/auth.dart' as _i5;
import 'package:shopify_domain/core.dart' as _i37;
import 'package:shopify_domain/core/images/photo_picker.dart' as _i11;
import 'package:shopify_domain/core/network/network_info.dart' as _i25;
import 'package:shopify_domain/order/shopify_order_facade.dart' as _i16;
import 'package:shopify_domain/product.dart' as _i8;
import 'package:shopify_domain/shop/shopify_shop_repository.dart' as _i21;

import 'application/auth/auth_bloc.dart' as _i35;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i34;
import 'application/order_actor/order_actor_bloc.dart' as _i22;
import 'application/order_watcher/order_watcher_bloc.dart' as _i23;
import 'application/product/product_adder/product_adder_bloc.dart' as _i24;
import 'application/product/product_form/product_form_bloc.dart' as _i26;
import 'application/product/search_product/search_product_bloc.dart' as _i27;
import 'application/shop/shop_actor/shop_actor_bloc.dart' as _i32;
import 'application/shop/shop_form/shop_form_bloc.dart' as _i28;
import 'application/shop/shop_location_picker/shop_location_picker_bloc.dart'
    as _i29;
import 'application/shop/shop_logo_picker/shop_logo_picker_bloc.dart' as _i30;
import 'application/shop/shop_registration/shop_registration_bloc.dart' as _i36;
import 'application/shop/shop_time_picker/shop_time_picker_bloc.dart' as _i31;
import 'application/shop/shop_watcher/shop_watcher_bloc.dart' as _i33;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'domain/core/images/i_image_facade.dart' as _i9;
import 'domain/order/i_order_facade.dart' as _i14;
import 'domain/product/barcode_scanner/i_barcode_scanner_facade.dart' as _i6;
import 'domain/product/i_open_food_facts_repository.dart' as _i12;
import 'domain/product/i_product_repository.dart' as _i17;
import 'domain/shop/i_shop_repository.dart' as _i19;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i4;
import 'infrastructure/core/images/image_picker_image_facade.dart' as _i10;
import 'infrastructure/order/order_facade_impl.dart' as _i15;
import 'infrastructure/product/barcode_scanner/mobile_scanner_barcode_scanner_facade_impl.dart'
    as _i7;
import 'infrastructure/product/open_food_facts_repo_impl.dart' as _i13;
import 'infrastructure/product/product_repository_impl.dart' as _i18;
import 'infrastructure/shop/firebase_shop_repository.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i14.IOrderFacade>(
      () => _i15.OrderFacadeImpl(get<_i16.ShopifyOrderFacade>()));
  gh.lazySingleton<_i17.IProductRepository>(
      () => _i18.ProductRepostioryImpl(get<_i8.ShopifyProductRepository>()));
  gh.lazySingleton<_i19.IShopRepository>(
      () => _i20.FirebaseShopRepositoryImpl(get<_i21.ShopifyShopRepository>()));
  gh.factory<_i22.OrderActorBloc>(
      () => _i22.OrderActorBloc(get<_i14.IOrderFacade>()));
  gh.factory<_i23.OrderWatcherBloc>(
      () => _i23.OrderWatcherBloc(get<_i14.IOrderFacade>()));
  gh.factory<_i24.ProductAdderBloc>(() => _i24.ProductAdderBloc(
      productRepository: get<_i17.IProductRepository>(),
      networkInfo: get<_i25.NetworkInfo>()));
  gh.factory<_i26.ProductFormBloc>(() => _i26.ProductFormBloc(
      imageFacade: get<_i9.IImageFacade>(),
      networkInfo: get<_i25.NetworkInfo>(),
      productRepository: get<_i17.IProductRepository>(),
      shopRepository: get<_i19.IShopRepository>(),
      authFacade: get<_i3.IAuthFacade>()));
  gh.factory<_i27.SearchProductBloc>(() => _i27.SearchProductBloc(
      openFoodFactsRepository: get<_i12.IOpenFoodFactsRepository>(),
      shopifyProductsRepository: get<_i17.IProductRepository>()));
  gh.lazySingleton<_i28.ShopFormBloc>(() => _i28.ShopFormBloc());
  gh.lazySingleton<_i29.ShopLocationPickerBloc>(
      () => _i29.ShopLocationPickerBloc());
  gh.lazySingleton<_i30.ShopLogoPickerBloc>(
      () => _i30.ShopLogoPickerBloc(get<_i9.IImageFacade>()));
  gh.lazySingleton<_i31.ShopTimePickerBloc>(() => _i31.ShopTimePickerBloc());
  gh.factory<_i32.ShoppingActorBloc>(
      () => _i32.ShoppingActorBloc(get<_i19.IShopRepository>()));
  gh.factory<_i33.ShoppingWatcherBloc>(
      () => _i33.ShoppingWatcherBloc(get<_i19.IShopRepository>()));
  gh.factory<_i34.SignInFormBloc>(
      () => _i34.SignInFormBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i35.AuthBloc>(() => _i35.AuthBloc(get<_i3.IAuthFacade>()));
  gh.lazySingleton<_i36.ShopRegistrationBloc>(
      () => _i36.ShopRegistrationBloc(
          authFacade: get<_i3.IAuthFacade>(),
          shopFormBloc: get<_i28.ShopFormBloc>(),
          shopLocationPickerBloc: get<_i29.ShopLocationPickerBloc>(),
          shopTimePickerBloc: get<_i31.ShopTimePickerBloc>(),
          shopLogoPickerBloc: get<_i30.ShopLogoPickerBloc>(),
          locationInfo: get<_i37.LocationInfo>(),
          shopRepository: get<_i19.IShopRepository>()),
      dispose: _i36.disposeBloc);
  return get;
}
