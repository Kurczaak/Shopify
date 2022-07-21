part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required Location location,
    required double radius,
    required Option<LocationFailure> locationFailureOption,
    required bool isLoading,
  }) = _LocationState;

  factory LocationState.initial() => LocationState(
      location: Location.empty(),
      radius: .5,
      locationFailureOption: none(),
      isLoading: false);
}
