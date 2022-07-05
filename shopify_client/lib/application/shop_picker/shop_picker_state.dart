part of 'shop_picker_bloc.dart';

@freezed
class ShopPickerState with _$ShopPickerState {
  const factory ShopPickerState({
    required Option<Location> locationOpiton,
    required double radius,
    required Option<ShopFailure> shopFailureOption,
    required bool isLoading,
  }) = _ShopPickerState;

  factory ShopPickerState.initial() => ShopPickerState(
      locationOpiton: some(Location.empty()),
      radius: 0.5,
      shopFailureOption: none(),
      isLoading: false);

  factory ShopPickerState.loading(ShopPickerState previousState) =>
      ShopPickerState(
          locationOpiton: previousState.locationOpiton,
          radius: previousState.radius,
          shopFailureOption: none(),
          isLoading: true);

  factory ShopPickerState.failure(
          ShopPickerState previousState, ShopFailure failure) =>
      ShopPickerState(
          locationOpiton: previousState.locationOpiton,
          radius: previousState.radius,
          shopFailureOption: some(failure),
          isLoading: false);
}
