part of 'order_actor_bloc.dart';

@freezed
class OrderActorState with _$OrderActorState {
  const factory OrderActorState({
    required bool isLoading,
    required OrderStatusEnum orderStatus,
    required Option<UniqueId> orderIdOption,
    required Option<OrderFailure> failureOption,
  }) = _OrderActorState;

  factory OrderActorState.initial() => OrderActorState(
        isLoading: true,
        orderStatus: OrderStatusEnum.pending,
        failureOption: none(),
        orderIdOption: none(),
      );
}
