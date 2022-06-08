part of 'shop_watcher_bloc.dart';

@freezed
class ShoppingWatcherEvent with _$ShoppingWatcherEvent {
  const factory ShoppingWatcherEvent.watchAll() = _WatchAllStarted;
  const factory ShoppingWatcherEvent.watchYours() = _WatchYours;
}
