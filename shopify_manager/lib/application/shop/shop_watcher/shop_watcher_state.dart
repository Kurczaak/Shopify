part of 'shop_watcher_bloc.dart';

@freezed
class ShoppingWatcherState with _$ShoppingWatcherState {
  const factory ShoppingWatcherState.initial() = _Initial;
  const factory ShoppingWatcherState.loadInProgress() = _LoadInProgress;
  const factory ShoppingWatcherState.loadSuccess(KtList<Shop> shops) =
      _LoadSuccess;
  const factory ShoppingWatcherState.loadFailure(ShopFailure shopFailure) =
      _LoadFailure;
}
