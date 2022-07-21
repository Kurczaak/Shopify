import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_client/domain/core/i_location_facade.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';
part 'location_bloc.sealed.dart';

@LazySingleton()
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final ILocationFacade location;
  final NetworkInfo networkInfo;
  LocationBloc({required this.location, required this.networkInfo})
      : super(LocationState.initial()) {
    on<LocationEvent>((event, emit) async {
      await event.when(radiusChanged: (double radius) {
        emit(state.copyWith(radius: radius));
      }, searchLocation: (String stringLocation) async {
        if (await networkInfo.isConnected) {
          emit(state.copyWith(isLoading: true));
          final locationOrFailure =
              await location.getLocationFromString(stringLocation);
          locationOrFailure.fold(
              (failure) => emit(state.copyWith(
                  isLoading: false,
                  locationFailureOption: some(failure))), (location) {
            emit(state.copyWith(isLoading: false, location: location));
          });
        } else {
          emit(state.copyWith(
              locationFailureOption:
                  some(const LocationFailure.noInternetConnection())));
        }
      }, getYourLocation: () async {
        if (await networkInfo.isConnected) {
          emit(state.copyWith(isLoading: true));
          final locationOrFailure = await location.getCurrentLocation();
          locationOrFailure.fold(
              (failure) => emit(state.copyWith(
                  isLoading: false,
                  locationFailureOption: some(failure))), (location) {
            emit(state.copyWith(isLoading: false, location: location));
          });
        } else {
          emit(state.copyWith(
              isLoading: false,
              locationFailureOption:
                  some(const LocationFailure.noInternetConnection())));
        }
      });
    });
  }
}
