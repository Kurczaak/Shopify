part of 'shop_watcher_bloc.dart';

@Sealed()
abstract class _ShopWatcherState {
  void initial();
  void loading();
  void loaded(KtList<Shop> shops, Location location, double radius);
  void error(ShopFailure failure);
}
