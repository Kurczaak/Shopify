part of 'shop_registration_bloc.dart';

@superEnum
enum _ShopRegistrationEvent {
  @Data(fields: [
    DataField<ShopForm>('shopForm'),
  ])
  FormSaved,

  @Data(fields: [
    DataField<Location>('location'),
  ])
  LocationSaved,
  @Data(fields: [
    DataField<Week>('week'),
  ])
  WeekSaved,
  @Data(fields: [
    DataField<ShopLogo>('logo'),
  ])
  LogoSaved,
  @object
  ShopSaved,
}
