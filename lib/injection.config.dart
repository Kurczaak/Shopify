// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:image_picker/image_picker.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i17;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i16;
import 'application/shopping/shop_form/shop_form_bloc.dart' as _i11;
import 'application/shopping/shop_location_picker/shop_location_picker_bloc.dart'
    as _i12;
import 'application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart'
    as _i20;
import 'application/shopping/shop_time_picker/shop_time_picker_bloc.dart'
    as _i13;
import 'application/shopping/shopping_actor/shopping_actor_bloc.dart' as _i14;
import 'application/shopping/shopping_watcher/shopping_watcher_bloc.dart'
    as _i15;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/core/images/i_image_facade.dart' as _i18;
import 'domain/shopping/i_shop_repository.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i21;
import 'infrastructure/core/images/image_picker_image_facade.dart' as _i19;
import 'infrastructure/core/images/image_picker_injectable_module.dart' as _i22;
import 'infrastructure/shopping/shop_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final imagePikcerInjectableModule = _$ImagePikcerInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() =>
      _i7.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i8.IShopRepository>(
      () => _i9.ShopRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.ImagePicker>(
      () => imagePikcerInjectableModule.imagePicker);
  gh.factory<_i11.ShopFormBloc>(() => _i11.ShopFormBloc());
  gh.factory<_i12.ShopLocationPickerBloc>(() => _i12.ShopLocationPickerBloc());
  gh.factory<_i13.ShopTimePickerBloc>(() => _i13.ShopTimePickerBloc());
  gh.factory<_i14.ShoppingActorBloc>(
      () => _i14.ShoppingActorBloc(get<_i8.IShopRepository>()));
  gh.factory<_i15.ShoppingWatcherBloc>(
      () => _i15.ShoppingWatcherBloc(get<_i8.IShopRepository>()));
  gh.factory<_i16.SignInFormBloc>(
      () => _i16.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(get<_i6.IAuthFacade>()));
  gh.lazySingleton<_i18.IImageFacade>(
      () => _i19.ImagePickerImageFacade(get<_i10.ImagePicker>()));
  gh.factory<_i20.ShopLogoPickerBloc>(
      () => _i20.ShopLogoPickerBloc(get<_i18.IImageFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}

class _$ImagePikcerInjectableModule extends _i22.ImagePikcerInjectableModule {}
