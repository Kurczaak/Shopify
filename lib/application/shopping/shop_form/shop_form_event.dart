part of 'shop_form_bloc.dart';

@freezed
abstract class ShopFormEvent with _$ShopFormEvent {
  const factory ShopFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory ShopFormEvent.streetNameChanged(String streetNameStr) =
      _StreetNameChanged;
  const factory ShopFormEvent.streetNumberChanged(String streetNumberStr) =
      _StreetNumberChanged;
  const factory ShopFormEvent.apartmentNumberChanged(
      String apartmentNumberStr) = _ApartmentNumberChanged;
  const factory ShopFormEvent.postalCodeChanged(String postalCodeStr) =
      _PostalCodeChanged;
  const factory ShopFormEvent.cityChanged(String cityStr) = _CityChanged;
  const factory ShopFormEvent.saved() = _Saved;
}
