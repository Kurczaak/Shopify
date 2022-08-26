part of 'order_watcher_bloc.dart';

@freezed
class OrderWatcherState with _$OrderWatcherState {
  const factory OrderWatcherState({
    required KtList<ShopifyOrder> orders,
    required bool isLoading,
    required Option<OrderFailure> failureOption,
    required UniqueId shopId,
  }) = _OrderWatcherState;

  factory OrderWatcherState.initial() => OrderWatcherState(
      shopId: UniqueId(),
      orders: const KtList.empty(),
      isLoading: false,
      failureOption: none());
}
