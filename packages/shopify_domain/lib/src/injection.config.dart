// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:geocoding/geocoding.dart' as _i8;
import 'package:geoflutterfire/geoflutterfire.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i10;
import 'package:image_picker/image_picker.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i12;
import 'package:location/location.dart' as _i13;

import '../auth.dart' as _i20;
import '../core.dart' as _i18;
import '../core/location/location_info.dart' as _i14;
import '../core/location/location_injectable_module.dart' as _i27;
import '../core/network/network_info.dart' as _i16;
import '../product.dart' as _i3;
import '../shop.dart' as _i24;
import 'auth/firebase_auth_facade.dart' as _i21;
import 'core/images/image_picker_injectable_module.dart' as _i28;
import 'core/images/image_picker_photo_picker_implementation.dart' as _i19;
import 'core/injectable_module.dart' as _i26;
import 'core/location/location_injectable_module.dart' as _i29;
import 'core/location/shopify_location_facade_implementation.dart' as _i22;
import 'core/network/network_info.dart' as _i15;
import 'product/barcode_scanner/mobile_scanner_barcode_scanner_facade_impl.dart'
    as _i4;
import 'product/firebase_product_repository.dart' as _i23;
import 'product/open_food_facts/open_food_facts_repository_impl.dart' as _i17;
import 'shop/firebase_shop_repository.dart'
    as _i25; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i8.GeocodingPlatform>(
      () => geocodingInjectableModule.geocodingPlatform);
  gh.lazySingleton<_i9.Geoflutterfire>(
      () => firebaseInjectableModule.geoFlutterFire);
  gh.lazySingleton<_i10.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i11.ImagePicker>(
      () => imagePikcerInjectableModule.imagePicker);
  gh.lazySingleton<_i12.InternetConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<_i13.Location>(() => locationInjectableModule.location);
  gh.lazySingleton<_i14.LocationInfo>(
      () => _i14.LocationInfoImpl(get<_i8.GeocodingPlatform>()));
  gh.factory<_i15.NetworkInfo>(
      () => _i15.NetworkInfoImpl(get<_i12.InternetConnectionChecker>()));
  gh.factory<_i16.NetworkInfo>(
      () => _i16.NetworkInfoImpl(get<_i12.InternetConnectionChecker>()));
  gh.factory<_i3.OpenFoodFactsRepository>(
      () => _i17.OpenFoodFactsRepositoryImpl(get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i18.PhotoPicker>(() =>
      _i19.ImagePickerImagePickerPhotoPickerImpl(get<_i11.ImagePicker>()));
  gh.lazySingleton<_i20.ShopifyAuth>(() => _i21.FirebaseAuthFacade(
      get<_i5.FirebaseAuth>(), get<_i10.GoogleSignIn>()));
  gh.lazySingleton<_i18.ShopifyLocationFacade>(() =>
      _i22.ShopifyLocationFacadeImpl(
          get<_i13.Location>(), get<_i8.GeocodingPlatform>()));
  gh.lazySingleton<_i3.ShopifyProductRepository>(() =>
      _i23.FirebaseProductRepositoryImpl(get<_i6.FirebaseFirestore>(),
          get<_i7.FirebaseStorage>(), get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i24.ShopifyShopRepository>(() =>
      _i25.FirebaseShopRepositoryImpl(get<_i6.FirebaseFirestore>(),
          get<_i7.FirebaseStorage>(), get<_i9.Geoflutterfire>()));
  return get;
}

class _$FirebaseInjectableModule extends _i26.FirebaseInjectableModule {}

class _$GeocodingInjectableModule extends _i27.GeocodingInjectableModule {}

class _$ImagePikcerInjectableModule extends _i28.ImagePikcerInjectableModule {}

class _$LocationInjectableModule extends _i29.LocationInjectableModule {}
