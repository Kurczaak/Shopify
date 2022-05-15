// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:geocoding/geocoding.dart' as _i6;
import 'package:geoflutterfire/geoflutterfire.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:image_picker/image_picker.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i10;
import 'package:location/location.dart' as _i11;

import 'auth.dart' as _i18;
import 'core.dart' as _i16;
import 'core/location/location_info.dart' as _i12;
import 'core/location/location_injectable_module.dart' as _i25;
import 'product.dart' as _i14;
import 'shop.dart' as _i22;
import 'src/auth/firebase_auth_facade.dart' as _i19;
import 'src/core/images/image_picker_injectable_module.dart' as _i26;
import 'src/core/images/image_picker_photo_picker_implementation.dart' as _i17;
import 'src/core/injectable_module.dart' as _i24;
import 'src/core/location/location_injectable_module.dart' as _i27;
import 'src/core/location/shopify_location_facade_implementation.dart' as _i20;
import 'src/core/network/network_info.dart' as _i13;
import 'src/product/firebase_product_repository.dart' as _i21;
import 'src/product/open_food_facts/open_food_facts_repository_impl.dart'
    as _i15;
import 'src/shop/firebase_shop_repository.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final geocodingInjectableModule = _$GeocodingInjectableModule();
  final imagePikcerInjectableModule = _$ImagePikcerInjectableModule();
  final locationInjectableModule = _$LocationInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i6.GeocodingPlatform>(
      () => geocodingInjectableModule.geocodingPlatform);
  gh.lazySingleton<_i7.Geoflutterfire>(
      () => firebaseInjectableModule.geoFlutterFire);
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i9.ImagePicker>(
      () => imagePikcerInjectableModule.imagePicker);
  gh.lazySingleton<_i10.InternetConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<_i11.Location>(
      () => locationInjectableModule.geocodingPlatform);
  gh.lazySingleton<_i12.LocationInfo>(
      () => _i12.LocationInfoImpl(get<_i6.GeocodingPlatform>()));
  gh.factory<_i13.NetworkInfo>(
      () => _i13.NetworkInfoImpl(get<_i10.InternetConnectionChecker>()));
  gh.factory<_i14.OpenFoodFactsRepository>(
      () => _i15.OpenFoodFactsRepositoryImpl(get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i16.PhotoPicker>(
      () => _i17.ImagePickerImagePickerPhotoPickerImpl(get<_i9.ImagePicker>()));
  gh.lazySingleton<_i18.ShopifyAuth>(() => _i19.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i8.GoogleSignIn>()));
  gh.lazySingleton<_i16.ShopifyLocationFacade>(() =>
      _i20.ShopifyLocationFacadeImpl(
          get<_i11.Location>(), get<_i6.GeocodingPlatform>()));
  gh.lazySingleton<_i14.ShopifyProductRepository>(() =>
      _i21.FirebaseProductRepositoryImpl(get<_i4.FirebaseFirestore>(),
          get<_i5.FirebaseStorage>(), get<_i13.NetworkInfo>()));
  gh.lazySingleton<_i22.ShopifyShopRepository>(() =>
      _i23.FirebaseShopRepositoryImpl(get<_i4.FirebaseFirestore>(),
          get<_i5.FirebaseStorage>(), get<_i7.Geoflutterfire>()));
  return get;
}

class _$FirebaseInjectableModule extends _i24.FirebaseInjectableModule {}

class _$GeocodingInjectableModule extends _i25.GeocodingInjectableModule {}

class _$ImagePikcerInjectableModule extends _i26.ImagePikcerInjectableModule {}

class _$LocationInjectableModule extends _i27.LocationInjectableModule {}
