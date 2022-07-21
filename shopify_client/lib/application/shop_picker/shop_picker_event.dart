part of 'shop_picker_bloc.dart';

@Sealed()
abstract class _ShopPickerEvent {
  void radiusChanged(double radius);
  void locationChanged(Location location);
  void watchNearbyShops();
}
