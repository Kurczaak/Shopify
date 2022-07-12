part of 'order_watcher_bloc.dart';

@Sealed()
abstract class _OrderWatcherEvent {
  void watchPendingOrders();
  void watchCompletedOrders();
  void watchCollectedOrders();
}
