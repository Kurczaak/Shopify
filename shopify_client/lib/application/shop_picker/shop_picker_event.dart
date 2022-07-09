part of 'shop_picker_bloc.dart';

@Sealed()
abstract class _ShopPickerEvent {
  void radiusChanged(double radius);
  void watchNearbyShops();
  void searchLocation(String stringLocation);
  void getYourLocation();
}
