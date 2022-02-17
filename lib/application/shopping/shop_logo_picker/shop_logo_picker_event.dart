part of 'shop_logo_picker_bloc.dart';

@superEnum
enum _ShopLogoPickerEvent {
  @Data(fields: [
    DataField<ShopLogo>(
      'shopLogo',
    ),
  ])
  GetShopLogo,
}
