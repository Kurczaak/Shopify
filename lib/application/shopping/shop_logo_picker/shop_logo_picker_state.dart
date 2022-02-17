part of 'shop_logo_picker_bloc.dart';

@superEnum
enum _ShopLogoPickerState {
  @object
  Initial,
  @object
  Loading,
  @Data(fields: [
    DataField<ShopLogo>('logo'),
  ])
  Loaded,
  @object
  Error
}
