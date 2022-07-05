part of 'shop_watcher_bloc.dart';

@Sealed()
abstract class _ShopWatcherEvent {
  void watchNearbyShops(double radius);
  void watchShopsByLocation(double radius, String locationString);
}
