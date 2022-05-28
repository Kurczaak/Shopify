part of 'shop_registration_bloc.dart';

@Sealed()
abstract class _ShopRegistrationEvent {
  void formSaved(ShopForm shopForm);
  void locationSaved(Location location);
  void weekSaved(Week week);
  void logoSaved(ShopLogo logo);
  void shopSaved();
}
