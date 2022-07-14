import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/order_watcher/order_watcher_bloc.dart';
import 'package:shopify_client/domain/order/i_order_facade.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_domain/order/order_failure.dart';
import '../../fixtures/user_carts_fixture.dart';
import 'order_watcher_bloc_test.mocks.dart';

@GenerateMocks([IOrderFacade])
void main() {
  late MockIOrderFacade mockOrderFacade;
  late OrderWatcherBloc bloc;
  final order = ShopifyOrder(
      cart: tCart,
      date: DateTime.now(),
      orderStatus: OrderStatus(OrderStatusEnum.pending));
  setUp(() {
    mockOrderFacade = MockIOrderFacade();
    bloc = OrderWatcherBloc(mockOrderFacade);
    when(mockOrderFacade.watchYourOrders(OrderStatus(OrderStatusEnum.pending)))
        .thenAnswer((_) =>
            Stream.fromFuture(Future.value(right(KtList.from([order])))));
  });
  group('watchPendingOrders', () {
    blocTest('should call orderFacade to watch pending orders',
        build: () => bloc,
        act: (OrderWatcherBloc bloc) =>
            bloc.add(const OrderWatcherEvent.watchPendingOrders()),
        verify: (_) {
          verify(mockOrderFacade
              .watchYourOrders(OrderStatus(OrderStatusEnum.pending)));
        });

    blocTest('should emit [LOADING] and [LOADED]',
        build: () => bloc,
        act: (OrderWatcherBloc bloc) =>
            bloc.add(const OrderWatcherEvent.watchPendingOrders()),
        expect: () => [
              OrderWatcherState.initial().copyWith(isLoading: true),
              OrderWatcherState.initial()
                  .copyWith(orders: (KtList.from([order]))),
            ]);

    blocTest('should emit [LOADING] and [ERROR] when facade returned failure ',
        build: () => bloc,
        act: (OrderWatcherBloc bloc) =>
            bloc.add(const OrderWatcherEvent.watchPendingOrders()),
        setUp: () {
          when(mockOrderFacade
                  .watchYourOrders(OrderStatus(OrderStatusEnum.pending)))
              .thenAnswer((_) => Stream.fromFuture(
                  Future.value(left(const OrderFailure.empty()))));
        },
        expect: () => [
              OrderWatcherState.initial().copyWith(isLoading: true),
              OrderWatcherState.initial()
                  .copyWith(failureOption: some(const OrderFailure.empty())),
            ]);
  });
}
