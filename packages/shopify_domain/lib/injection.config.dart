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
import 'package:image_picker/image_picker.dart' as _i15;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i16;

import 'auth.dart' as _i9;
import 'core.dart' as _i19;
import 'core/location/location_info.dart' as _i17;
import 'product.dart' as _i11;
import 'shop.dart' as _i13;
import 'src/auth/firebase_auth_facade.dart' as _i10;
import 'src/core/images/image_picker_photo_picker_implementation.dart' as _i20;
import 'src/core/images/image_picker_injectable_module.dart' as _i25;
import 'src/core/injectable_module.dart' as _i23;
import 'src/core/location/location_injectable_module.dart' as _i24;
import 'src/core/network/network_info.dart' as _i18;
import 'src/product/firebase_product_repository.dart' as _i22;
import 'src/product/open_food_facts/open_food_facts_repository_impl.dart'
    as _i21;
import 'src/shop/firebase_shop_repository.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final geocodingInjectableModule = _$GeocodingInjectableModule();
  final imagePikcerInjectableModule = _$ImagePikcerInjectableModule();
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
  gh.lazySingleton<_i9.ShopifyAuth>(() => _i10.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i8.GoogleSignIn>()));

  gh.lazySingleton<_i13.ShopifyShopRepository>(() =>
      _i14.FirebaseShopRepositoryImpl(get<_i4.FirebaseFirestore>(),
          get<_i5.FirebaseStorage>(), get<_i7.Geoflutterfire>()));
  gh.lazySingleton<_i15.ImagePicker>(
      () => imagePikcerInjectableModule.imagePicker);
  gh.lazySingleton<_i16.InternetConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<_i17.LocationInfo>(
      () => _i17.LocationInfoImpl(get<_i6.GeocodingPlatform>()));
  gh.factory<_i18.NetworkInfo>(
      () => _i18.NetworkInfoImpl(get<_i16.InternetConnectionChecker>()));
  gh.lazySingleton<_i19.PhotoPicker>(() =>
      _i20.ImagePickerImagePickerPhotoPickerImpl(get<_i15.ImagePicker>()));
  gh.factory<_i11.OpenFoodFactsRepository>(
      () => _i21.OpenFoodFactsRepositoryImpl(get<_i18.NetworkInfo>()));
  gh.lazySingleton<_i11.ShopifyProductRepository>(() =>
      _i22.FirebaseProductRepositoryImpl(get<_i4.FirebaseFirestore>(),
          get<_i5.FirebaseStorage>(), get<_i18.NetworkInfo>()));
  return get;
}

class _$FirebaseInjectableModule extends _i23.FirebaseInjectableModule {}

class _$GeocodingInjectableModule extends _i24.GeocodingInjectableModule {}

class _$ImagePikcerInjectableModule extends _i25.ImagePikcerInjectableModule {}
