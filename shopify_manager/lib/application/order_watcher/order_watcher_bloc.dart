import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_manager/domain/order/i_order_facade.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_domain/order/order_failure.dart';

part 'order_watcher_event.dart';
part 'order_watcher_state.dart';
part 'order_watcher_bloc.freezed.dart';
part 'order_watcher_bloc.sealed.dart';

@Injectable()
class OrderWatcherBloc extends Bloc<OrderWatcherEvent, OrderWatcherState> {
  final IOrderFacade orderFacade;
  OrderWatcherBloc(this.orderFacade) : super(OrderWatcherState.initial()) {
    on<OrderWatcherEvent>((event, emit) async {
      await event.when(
        watchPendingOrders: () async {
          emit(state.copyWith(isLoading: true, failureOption: none()));
          await emit.forEach(
              orderFacade.watchShopOrders(
                  state.shopId, OrderStatus(OrderStatusEnum.pending)),
              onData:
                  (Either<OrderFailure, KtList<ShopifyOrder>> ordersOrFailure) {
            return ordersOrFailure.fold(
                (failure) => state.copyWith(
                    isLoading: false, failureOption: some(failure)),
                (orders) => state.copyWith(
                    isLoading: false, orders: orders, failureOption: none()));
          });
        },
        watchCompletedOrders: () async {
          emit(state.copyWith(isLoading: true, failureOption: none()));
          await emit.forEach(
              orderFacade.watchShopOrders(
                  state.shopId, OrderStatus(OrderStatusEnum.completed)),
              onData:
                  (Either<OrderFailure, KtList<ShopifyOrder>> ordersOrFailure) {
            return ordersOrFailure.fold(
                (failure) => state.copyWith(
                    isLoading: false, failureOption: some(failure)),
                (orders) => state.copyWith(
                    isLoading: false, orders: orders, failureOption: none()));
          });
        },
        watchCollectedOrders: () async {
          emit(state.copyWith(isLoading: true, failureOption: none()));
          await emit.forEach(
              orderFacade.watchShopOrders(
                  state.shopId, OrderStatus(OrderStatusEnum.collected)),
              onData:
                  (Either<OrderFailure, KtList<ShopifyOrder>> ordersOrFailure) {
            return ordersOrFailure.fold(
                (failure) => state.copyWith(
                    isLoading: false, failureOption: some(failure)),
                (orders) => state.copyWith(
                    isLoading: false, orders: orders, failureOption: none()));
          });
        },
        initialize: (UniqueId shopId) {
          emit(state.copyWith(shopId: shopId));
        },
      );
    });
  }
}
