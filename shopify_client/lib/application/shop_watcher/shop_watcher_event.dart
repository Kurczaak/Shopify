// ignore_for_file: unused_element, unused_field, constant_identifier_names

part of 'shop_watcher_bloc.dart';

@superEnum
enum _ShopWatcherEvent {
  @Data(fields: [
    DataField<double>('radius'),
  ])
  WatchNearbyShops,
  @Data(fields: [
    DataField<double>('radius'),
    DataField<Location>('location'),
  ])
  WatchShopsByLocation,
}
