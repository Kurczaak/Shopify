// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:algolia/algolia.dart' as _i33;
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:cloud_functions/cloud_functions.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:geocoding/geocoding.dart' as _i9;
import 'package:geoflutterfire/geoflutterfire.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:image_picker/image_picker.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i13;
import 'package:location/location.dart' as _i14;

import '../auth.dart' as _i20;
import '../auth/shopify_auth.dart' as _i26;
import '../best_offers/shopify_best_offers_facade.dart' as _i22;
import '../cart/shopify_cart_facade.dart' as _i24;
import '../core.dart' as _i18;
import '../core/location/location_info.dart' as _i15;
import '../core/location/location_injectable_module.dart' as _i39;
import '../core/network/network_info.dart' as _i16;
import '../favourites/shopify_favourites_facade.dart' as _i36;
import '../order/shopify_order_facade.dart' as _i28;
import '../product.dart' as _i3;
import '../product/shopify_product_searcher.dart' as _i31;
import '../shop.dart' as _i34;
import 'auth/firebase_auth_facade.dart' as _i21;
import 'best_offers/firebase_best_offers_facade_impl.dart' as _i23;
import 'cart/firebase_cart_facade_impl.dart' as _i25;
import 'core/images/image_picker_injectable_module.dart' as _i40;
import 'core/images/image_picker_photo_picker_implementation.dart' as _i19;
import 'core/injectable_module.dart' as _i38;
import 'core/location/location_injectable_module.dart' as _i41;
import 'core/location/shopify_location_facade_implementation.dart' as _i27;
import 'favourites/firebase_favouirtes_facade_impl.dart' as _i37;
import 'order/firebase_order_facade_impl.dart' as _i29;
import 'product/algolia_product_searcher_impl.dart' as _i32;
import 'product/barcode_scanner/mobile_scanner_barcode_scanner_facade_impl.dart'
    as _i4;
import 'product/firebase_product_repository.dart' as _i30;
import 'product/open_food_facts/open_food_facts_repository_impl.dart' as _i17;
import 'shop/firebase_shop_repository.dart'
    as _i35; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final geocodingInjectableModule = _$GeocodingInjectableModule();
  final imagePikcerInjectableModule = _$ImagePikcerInjectableModule();
  final locationInjectableModule = _$LocationInjectableModule();
  gh.factory<_i3.BarcodeScanner>(
      () => _i4.MobileScannerBarcodeScannerFacadeImpl());
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i7.FirebaseFunctions>(
      () => firebaseInjectableModule.firebaseFunctions);
  gh.lazySingleton<_i8.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i9.GeocodingPlatform>(
      () => geocodingInjectableModule.geocodingPlatform);
  gh.lazySingleton<_i10.Geoflutterfire>(
      () => firebaseInjectableModule.geoFlutterFire);
  gh.lazySingleton<_i11.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i12.ImagePicker>(
      () => imagePikcerInjectableModule.imagePicker);
  gh.lazySingleton<_i13.InternetConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<_i14.Location>(() => locationInjectableModule.location);
  gh.lazySingleton<_i15.LocationInfo>(
      () => _i15.LocationInfoImpl(get<_i9.GeocodingPlatform>()));
  gh.factory<_i16.NetworkInfo>(
      () => _i16.NetworkInfoImpl(get<_i13.InternetConnectionChecker>()));
  gh.factory<_i3.OpenFoodFactsRepository>(
      () => _i17.OpenFoodFactsRepositoryImpl(get<_i16.NetworkInfo>()));
  gh.lazySingleton<_i18.PhotoPicker>(() =>
      _i19.ImagePickerImagePickerPhotoPickerImpl(get<_i12.ImagePicker>()));
  gh.lazySingleton<_i20.ShopifyAuth>(() => _i21.FirebaseAuthFacade(
      get<_i5.FirebaseAuth>(),
      get<_i11.GoogleSignIn>(),
      get<_i16.NetworkInfo>()));
  gh.factory<_i22.ShopifyBestOffersFacade>(() =>
      _i23.FirebaseBestOffersFacadeImpl(get<_i16.NetworkInfo>(),
          get<_i6.FirebaseFirestore>(), get<_i10.Geoflutterfire>()));
  gh.factory<_i24.ShopifyCartFacade>(() => _i25.FirebaseCartFacadeImpl(
      firebase: get<_i6.FirebaseFirestore>(),
      networkInfo: get<_i16.NetworkInfo>(),
      auth: get<_i26.ShopifyAuth>()));
  gh.lazySingleton<_i18.ShopifyLocationFacade>(() =>
      _i27.ShopifyLocationFacadeImpl(
          get<_i14.Location>(), get<_i9.GeocodingPlatform>()));
  gh.factory<_i28.ShopifyOrderFacade>(() => _i29.FirebaseOrderFacadeImpl(
      networkInfo: get<_i16.NetworkInfo>(),
      firebase: get<_i6.FirebaseFirestore>(),
      auth: get<_i26.ShopifyAuth>()));
  gh.lazySingleton<_i3.ShopifyProductRepository>(() =>
      _i30.FirebaseProductRepositoryImpl(
          firestore: get<_i6.FirebaseFirestore>(),
          storage: get<_i8.FirebaseStorage>(),
          networkInfo: get<_i16.NetworkInfo>()));
  gh.factory<_i31.ShopifyProductSearcher>(() => _i32.AlgoliaProductSearcher(
      algolia: get<_i33.Algolia>(), networkInfo: get<_i16.NetworkInfo>()));
  gh.lazySingleton<_i34.ShopifyShopRepository>(() =>
      _i35.FirebaseShopRepositoryImpl(get<_i6.FirebaseFirestore>(),
          get<_i8.FirebaseStorage>(), get<_i10.Geoflutterfire>()));
  gh.factory<_i36.IShopifyFavouritesFacade>(() =>
      _i37.FirebaseFavouritesFacadeImpl(
          networkInfo: get<_i16.NetworkInfo>(),
          firebase: get<_i6.FirebaseFirestore>(),
          firebaseFunctions: get<_i7.FirebaseFunctions>(),
          auth: get<_i26.ShopifyAuth>()));
  return get;
}

class _$FirebaseInjectableModule extends _i38.FirebaseInjectableModule {}

class _$GeocodingInjectableModule extends _i39.GeocodingInjectableModule {}

class _$ImagePikcerInjectableModule extends _i40.ImagePikcerInjectableModule {}

class _$LocationInjectableModule extends _i41.LocationInjectableModule {}
