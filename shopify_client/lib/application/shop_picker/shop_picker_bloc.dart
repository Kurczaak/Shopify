import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_client/domain/core/i_location_facade.dart';
import 'package:shopify_client/domain/shop/i_shop_repository.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/shop.dart';

part 'shop_picker_event.dart';
part 'shop_picker_state.dart';
part 'shop_picker_bloc.freezed.dart';
part 'shop_picker_bloc.sealed.dart';

class ShopPickerBloc extends Bloc<ShopPickerEvent, ShopPickerState> {
  final ILocationFacade location;
  final IShopRepository shopRepository;
  final NetworkInfo networkInfo;
  ShopPickerBloc(
      {required this.networkInfo,
      required this.location,
      required this.shopRepository})
      : super(ShopPickerState.initial()) {
    on<ShopPickerEvent>((event, emit) async {
      await event.when(radiusChanged: (double radius) {
        emit(state.copyWith(radius: radius));
        add(const ShopPickerEvent.watchNearbyShops());
      }, watchNearbyShops: () async {
        if (await networkInfo.isConnected) {
          await emit.forEach(
              shopRepository.watchNearby(
                  state.location, NonnegativeNumber(state.radius)),
              onData: (Either<ShopFailure, KtList<Shop>> data) {
            return data.fold(
                (failure) => ShopPickerState.shopFailure(state, failure),
                (shops) => state.copyWith(
                      shops: shops,
                    ));
          });
        } else {
          emit(ShopPickerState.shopFailure(
              state, const ShopFailure.noInternetConnection()));
        }
      }, searchLocation: (String stringLocation) async {
        if (await networkInfo.isConnected) {
          emit(ShopPickerState.loading(state));
          final locationOrFailure =
              await location.getLocationFromString(stringLocation);
          locationOrFailure.fold(
              (failure) =>
                  emit(ShopPickerState.locationFailure(state, failure)),
              (location) {
            emit(state.copyWith(isLoading: false, location: location));
            add(const ShopPickerEvent.watchNearbyShops());
          });
        } else {
          emit(ShopPickerState.shopFailure(
              state, const ShopFailure.noInternetConnection()));
        }
      }, getYourLocation: () async {
        if (await networkInfo.isConnected) {
          emit(ShopPickerState.loading(state));
          final locationOrFailure = await location.getCurrentLocation();
          locationOrFailure.fold(
              (failure) =>
                  emit(ShopPickerState.locationFailure(state, failure)),
              (location) {
            emit(state.copyWith(isLoading: false, location: location));
            add(const ShopPickerEvent.watchNearbyShops());
          });
        } else {
          emit(ShopPickerState.shopFailure(
              state, const ShopFailure.noInternetConnection()));
        }
      });
    });
  }
}
