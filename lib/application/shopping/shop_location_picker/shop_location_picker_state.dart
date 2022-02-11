part of 'shop_location_picker_bloc.dart';

@freezed
abstract class ShopLocationPickerState with _$ShopLocationPickerState {
  const factory ShopLocationPickerState({
    required Option<Location> location,
  }) = _ShopLocationPickerState;

  factory ShopLocationPickerState.initial() =>
      ShopLocationPickerState(location: none());
}
