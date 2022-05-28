part of 'shop_location_picker_bloc.dart';

@freezed
class ShopLocationPickerState with _$ShopLocationPickerState {
  const factory ShopLocationPickerState({
    required Option<Location> location,
    required bool saved,
  }) = _ShopLocationPickerState;

  factory ShopLocationPickerState.initial() =>
      ShopLocationPickerState(location: none(), saved: false);
}
