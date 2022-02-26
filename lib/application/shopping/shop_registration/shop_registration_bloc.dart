import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/errors.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/core/location/location_info.dart';
import 'package:shopify_manager/domain/shopping/shop.dart';
import 'package:shopify_manager/domain/shopping/shop_failure.dart';
import 'package:shopify_manager/domain/shopping/shop_form.dart';
import 'package:shopify_manager/domain/shopping/time/week.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_registration_event.dart';
part 'shop_registration_state.dart';
part 'shop_registration_bloc.super.dart';
part 'shop_registration_bloc.freezed.dart';

@singleton
class ShopRegistrationBloc
    extends Bloc<ShopRegistrationEvent, ShopRegistrationState> {
  final ShopFormBloc shopFormBloc;
  final ShopLocationPickerBloc shopLocationPickerBloc;
  final ShopTimePickerBloc shopTimePickerBloc;
  final ShopLogoPickerBloc shopLogoPickerBloc;
  final LocationInfo locationInfo;

  late final StreamSubscription _shopFormBlocSubscription;
  late final StreamSubscription _shopLocationPickerBlocSubscription;
  late final StreamSubscription _shopTimePickerBlocSubscription;

  ShopRegistrationBloc({
    required this.shopFormBloc,
    required this.shopLocationPickerBloc,
    required this.shopTimePickerBloc,
    required this.shopLogoPickerBloc,
    required this.locationInfo,
  }) : super(ShopRegistrationState.initial()) {
    print('Ciao');
    _shopFormBlocSubscription = shopFormBloc.stream.listen((state) {
      print('FORM IS KURWA SAVED XDDDD');
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
            () => null,
            (location) =>
                add(ShopRegistrationEvent.weekSaved(week: state.week)));
      }
    });

    on<ShopRegistrationEvent>((event, emit) async {
      await event.when(
        formSaved: (formSavedState) async {
          print('FORM IS KURWA SAVED');
          emit(state.copyWith(
              shop: state.shop.copyWith(
            address: formSavedState.shopForm.address,
            shopName: formSavedState.shopForm.shopName,
          )));
          final location = await locationInfo
              .getLocationFromAddress(formSavedState.shopForm.address);
          shopLocationPickerBloc.add(ShopLocationPickerEvent.locationChanged(
              latitude: location.latitude, longitude: location.longitude));
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
        logoSaved: (logoSavedState) {},
        shopSaved: () {},
      );
    });
  }
}
