import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/application/shop/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/application/shop/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shop/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shop/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_registration_bloc.sealed.dart';
part 'shop_registration_bloc.freezed.dart';
part 'shop_registration_event.dart';
part 'shop_registration_state.dart';

FutureOr disposeBloc(ShopRegistrationBloc bloc) {
  //print('=========================================');
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
  final IAuthFacade authFacade;
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
    required this.authFacade,
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
      if (state.isLoaded) {
        add(ShopRegistrationEvent.logoSaved(logo: state.asLoaded.logo));
      }
    });

    on<ShopRegistrationEvent>((event, emit) async {
      await event.when(
        formSaved: (shopForm) async {
          emit(state.copyWith(
              shop: state.shop.copyWith(
                address: shopForm.address,
                shopName: shopForm.shopName,
              ),
              isSaving: true));
          final failureOrLocation =
              await locationInfo.getLocationFromAddress(shopForm.address);
          emit(state.copyWith(isSaving: false));
          failureOrLocation.fold(
              (f) => shopLocationPickerBloc
                  .add(ShopLocationPickerEvent.locationNotFound()),
              (location) => shopLocationPickerBloc.add(
                  ShopLocationPickerEvent.locationChanged(
                      latitude: location.latitude,
                      longitude: location.longitude)));
        },
        locationSaved: (location) {
          emit(state.copyWith(shop: state.shop.copyWith(location: location)));
        },
        weekSaved: (week) {
          emit(state.copyWith(shop: state.shop.copyWith(workingWeek: week)));
        },
        logoSaved: (logo) {
          emit(state.copyWith(shopLogo: some(ShopLogo(logo.getOrCrash()))));
        },
        shopSaved: () async {
          emit(state.copyWith(
            isSaving: true,
          ));
          final userOption = await authFacade.getSignedInUser();
          await userOption.fold(
              () async => emit(state.copyWith(
                    isSaving: false,
                    saveFailureOrSuccessOption:
                        some(left(const ShopFailure.insufficientPermission())),
                  )), (user) async {
            final failureOrUnit = await shopRepository.create(
                state.shop,
                state.shopLogo.getOrElse(() => throw UnimplementedError()),
                user);
            failureOrUnit.fold(
                (f) => emit(state.copyWith(
                      isSaving: false,
                      saveFailureOrSuccessOption: some(left(f)),
                    )),
                (r) => emit(state.copyWith(
                      isSaving: false,
                      saveFailureOrSuccessOption: some(right(r)),
                    )));
          });
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
