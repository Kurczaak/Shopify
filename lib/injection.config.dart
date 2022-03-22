// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:geocoding/geocoding.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:image_picker/image_picker.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i14;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/core/images/i_image_facade.dart' as _i15;
import 'domain/shopping/i_shop_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i17;
import 'infrastructure/core/images/image_picker_image_facade.dart' as _i16;
import 'infrastructure/core/images/image_picker_injectable_module.dart' as _i19;
import 'infrastructure/core/location/location_injectable_module.dart' as _i18;
import 'infrastructure/shopping/firebase_shop_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthFacade>(() =>
      _i9.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i7.GoogleSignIn>()));
  gh.lazySingleton<_i10.IShopRepository>(() => _i11.FirebaseShopRepositoryImpl(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i12.ImagePicker>(
      () => imagePikcerInjectableModule.imagePicker);
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i8.IAuthFacade>()));
  gh.lazySingleton<_i15.IImageFacade>(
      () => _i16.ImagePickerImageFacade(get<_i12.ImagePicker>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}

class _$GeocodingInjectableModule extends _i18.GeocodingInjectableModule {}

class _$ImagePikcerInjectableModule extends _i19.ImagePikcerInjectableModule {}
