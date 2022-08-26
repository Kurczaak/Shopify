import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_domain/order/order_failure.dart';
import 'package:shopify_manager/domain/order/i_order_facade.dart';

part 'order_actor_event.dart';
part 'order_actor_state.dart';
part 'order_actor_bloc.sealed.dart';
part 'order_actor_bloc.freezed.dart';

@Injectable()
class OrderActorBloc extends Bloc<OrderActorEvent, OrderActorState> {
  final IOrderFacade orderFacade;
  OrderActorBloc(this.orderFacade) : super(OrderActorState.initial()) {
    on<OrderActorEvent>((event, emit) {
      event.when(initialize: (OrderStatus status, UniqueId orderId) {
        emit(state.copyWith(
            isLoading: false,
            orderStatus: status.getOrCrash(),
            orderIdOption: some(orderId)));
      }, changeOrderStatus: (OrderStatusEnum status) async {
        emit(state.copyWith(isLoading: true));
        await state.orderIdOption.fold(
            () async => emit(state.copyWith(
                failureOption: some(const OrderFailure.unexpectd()))),
            (orderId) async {
          final failureOrSuccess =
              await orderFacade.changeOrderStatus(orderId, OrderStatus(status));
          failureOrSuccess.fold(
              (failure) => emit(state.copyWith(failureOption: some(failure))),
              (_) => emit(state.copyWith(orderStatus: status)));
        });
      });
    });
  }
}
