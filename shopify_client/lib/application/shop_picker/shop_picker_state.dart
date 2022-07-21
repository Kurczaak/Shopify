part of 'shop_picker_bloc.dart';

@freezed
class ShopPickerState with _$ShopPickerState {
  const factory ShopPickerState({
    required KtList<Shop> shops,
    required Location location,
    required double radius,
    required Option<ShopFailure> shopFailureOption,
    required bool isLoading,
  }) = _ShopPickerState;

  factory ShopPickerState.initial() => ShopPickerState(
      shops: const KtList.empty(),
      location: Location.empty(),
      radius: 0.5,
      shopFailureOption: none(),
      isLoading: false);

  factory ShopPickerState.loading(ShopPickerState previousState) =>
      ShopPickerState(
          location: previousState.location,
          shops: previousState.shops,
          radius: previousState.radius,
          shopFailureOption: none(),
          isLoading: true);

  factory ShopPickerState.shopFailure(
          ShopPickerState previousState, ShopFailure failure) =>
      ShopPickerState(
          shops: previousState.shops,
          location: previousState.location,
          radius: previousState.radius,
          shopFailureOption: some(failure),
          isLoading: false);

  factory ShopPickerState.locationFailure(
          ShopPickerState previousState, LocationFailure failure) =>
      ShopPickerState(
          shops: previousState.shops,
          location: previousState.location,
          radius: previousState.radius,
          shopFailureOption: previousState.shopFailureOption,
          isLoading: false);
}
