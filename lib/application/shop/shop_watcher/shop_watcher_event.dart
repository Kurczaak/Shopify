part of 'shop_watcher_bloc.dart';

@freezed
abstract class ShoppingWatcherEvent with _$ShoppingWatcherEvent {
  const factory ShoppingWatcherEvent.watchAll() = _WatchAllStarted;
}
