part of 'shop_location_picker_bloc.dart';

@freezed
abstract class ShopLocationPickerEvent with _$ShopLocationPickerEvent {
  factory ShopLocationPickerEvent.locationChanged(
      {required double latitude, required double longitude}) = _LocationChanged;
  factory ShopLocationPickerEvent.locationNotFound() = _LocationNotFound;
  factory ShopLocationPickerEvent.saved() = _Saved;
}
