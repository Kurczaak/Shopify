import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/core/location/location_info.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';
import 'package:shopify_manager/domain/shop/shop.dart';
import 'package:shopify_manager/domain/shop/shop_failure.dart';
import 'package:shopify_manager/domain/shop/shop_form.dart';
import 'package:shopify_manager/domain/shop/time/week.dart';
import 'package:shopify_manager/injection.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';
import 'package:shopify_manager/application/shop/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/application/shop/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shop/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shop/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_registration_event.dart';
part 'shop_registration_state.dart';
part 'shop_registration_bloc.super.dart';
part 'shop_registration_bloc.freezed.dart';

FutureOr disposeBloc(ShopRegistrationBloc bloc) {
  print('=========================================');
  print('Resetting ShopRegistrationBloc singletons');
  print('=========================================');
  getIt.resetLazySingleton<ShopFormBloc>();
  getIt.resetLazySingleton<ShopLocationPickerBloc>();
  getIt.resetLazySingleton<ShopTimePickerBloc>();
  getIt.resetLazySingleton<ShopLogoPickerBloc>();
}

@LazySingleton(dispose: disposeBloc)
class ShopRegistrationBloc
    extends Bloc<ShopRegistrationEvent, ShopRegistrationState> {
  final ShopFormBloc shopFormBloc;
  final ShopLocationPickerBloc shopLocationPickerBloc;
  final ShopTimePickerBloc shopTimePickerBloc;
  final ShopLogoPickerBloc shopLogoPickerBloc;
  final LocationInfo locationInfo;
  final IShopRepository shopRepository;

  late final StreamSubscription _shopFormBlocSubscription;
  late final StreamSubscription _shopLocationPickerBlocSubscription;
  late final StreamSubscription _shopTimePickerBlocSubscription;
  late final StreamSubscription _shopLogoPickerBlocSubscription;

  ShopRegistrationBloc({
    required this.shopFormBloc,
    required this.shopLocationPickerBloc,
    required this.shopTimePickerBloc,
    required this.shopLogoPickerBloc,
    required this.locationInfo,
    required this.shopRepository,
  }) : super(ShopRegistrationState.initial()) {
    _shopFormBlocSubscription = shopFormBloc.stream.listen((state) {
      if (state.saved) {
        add(ShopRegistrationEvent.formSaved(shopForm: state.shop));
      }
    });

    _shopLocationPickerBlocSubscription =
        shopLocationPickerBloc.stream.listen((state) {
      if (state.saved) {
        state.location.fold(
            () => null,
            (location) =>
                add(ShopRegistrationEvent.locationSaved(location: location)));
      }
    });

    _shopTimePickerBlocSubscription = shopTimePickerBloc.stream.listen((state) {
      if (state.saved) {
        state.week.failureOption.fold(
            () => add(ShopRegistrationEvent.weekSaved(week: state.week)),
            (_) => null);
      }
    });

    _shopLogoPickerBlocSubscription = shopLogoPickerBloc.stream.listen((state) {
      if (state.isLoaded()) {
        add(ShopRegistrationEvent.logoSaved(logo: state.asLoaded().logo));
      }
    });

    on<ShopRegistrationEvent>((event, emit) async {
      await event.when(
        formSaved: (formSavedState) async {
          emit(state.copyWith(
              shop: state.shop.copyWith(
                address: formSavedState.shopForm.address,
                shopName: formSavedState.shopForm.shopName,
              ),
              isSaving: true));
          final failureOrLocation = await locationInfo
              .getLocationFromAddress(formSavedState.shopForm.address);
          emit(state.copyWith(isSaving: false));
          failureOrLocation.fold(
              (f) => shopLocationPickerBloc
                  .add(ShopLocationPickerEvent.locationNotFound()),
              (location) => shopLocationPickerBloc.add(
                  ShopLocationPickerEvent.locationChanged(
                      latitude: location.latitude,
                      longitude: location.longitude)));
        },
        locationSaved: (locationSavedState) {
          emit(state.copyWith(
              shop:
                  state.shop.copyWith(location: locationSavedState.location)));
        },
        weekSaved: (weekSavedState) {
          emit(state.copyWith(
              shop: state.shop.copyWith(workingWeek: weekSavedState.week)));
        },
        logoSaved: (logoSavedState) {
          emit(state.copyWith(
              shopLogo: some(ShopLogo(logoSavedState.logo.getOrCrash()))));
        },
        shopSaved: () async {
          emit(state.copyWith(
            isSaving: true,
          ));
          final failureOrUnit = await shopRepository.create(state.shop,
              state.shopLogo.getOrElse(() => throw UnimplementedError()));
          failureOrUnit.fold(
              (f) => emit(state.copyWith(
                    isSaving: false,
                    saveFailureOrSuccessOption: some(left(f)),
                  )),
              (r) => emit(state.copyWith(
                    isSaving: false,
                    saveFailureOrSuccessOption: some(right(r)),
                  )));
        },
      );
    });
  }

  @override
  Future<void> close() {
    _shopFormBlocSubscription.cancel();
    _shopLocationPickerBlocSubscription.cancel();
    _shopTimePickerBlocSubscription.cancel();
    _shopLogoPickerBlocSubscription.cancel();
    return super.close();
  }
}
