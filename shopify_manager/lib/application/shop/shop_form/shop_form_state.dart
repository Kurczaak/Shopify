part of 'shop_form_bloc.dart';

@freezed
class ShopFormState with _$ShopFormState {
  const factory ShopFormState({
    required ShopForm shop,
    required bool showErrorMessages,
    required bool saved,
  }) = _ShopFormState;

  factory ShopFormState.initial() => ShopFormState(
        shop: debugShopForm,
        showErrorMessages: false,
        saved: false,
      );
}

ShopForm debugShopForm = ShopForm(
    address: Address(
        streetName: StreetName('Chełmońskiego'),
        streetNumber: StreetNumber('21'),
        apartmentNumber: AddressNumber(''),
        city: CityName('Łowicz'),
        postalCode: PostalCode('99-400')),
    shopName: ShopName('XDDD'));
