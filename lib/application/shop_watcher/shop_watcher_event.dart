part of 'shop_watcher_bloc.dart';

@superEnum
enum _ShopWatcherEvent {
  @Data(fields: [
    DataField<int>('radius'),
    DataField<Location>('location'),
  ])
  WatchNearbyShops,
}
