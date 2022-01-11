part of 'shopping_watcher_bloc.dart';

@freezed
abstract class ShoppingWatcherEvent with _$ShoppingWatcherEvent {
  const factory ShoppingWatcherEvent.watchAll() = _WatchAllStarted;
}
