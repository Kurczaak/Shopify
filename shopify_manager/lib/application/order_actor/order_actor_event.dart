part of 'order_actor_bloc.dart';

@Sealed()
abstract class _OrderActorEvent {
  void initialize(OrderStatus orderStatus, UniqueId orderId);
  void changeOrderStatus(OrderStatusEnum orderStatus);
}
