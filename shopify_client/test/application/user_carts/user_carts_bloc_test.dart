import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/user_carts/user_carts_bloc.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';

import '../../fixtures/user_carts_fixture.dart';
import 'user_carts_bloc_test.mocks.dart';

@GenerateMocks([ICartFacade, NetworkInfo])
void main() {
  late MockICartFacade mockCartFacade;
  late MockNetworkInfo mockNetworkInfo;
  late UserCartsBloc bloc;
  late UserCarts userCarts;

  setUp(() {
    mockCartFacade = MockICartFacade();
    mockNetworkInfo = MockNetworkInfo();
    bloc = UserCartsBloc(mockCartFacade, mockNetworkInfo);
    userCarts =
        UserCarts(id: UniqueId(), carts: NonEmptyList(KtList.from([tCart])));
    when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    when(mockCartFacade.getUserCarts())
        .thenAnswer((_) => Stream.fromFuture(Future.value((right(userCarts)))));
    when(mockCartFacade.sendOrder(any)).thenAnswer((_) async => right(unit));
  });

  group('createOrders', () {
    blocTest('should call cartFacade.sendOrder for each cart in user carts',
        build: () => bloc,
        seed: () =>
            UserCartsState.initial().copyWith(userCartsOption: some(userCarts)),
        act: (UserCartsBloc bloc) =>
            bloc.add(const UserCartsEvent.createOrders()),
        verify: (_) {
          for (final cart in userCarts.carts.getOrCrash().iter) {
            verify(mockCartFacade.sendOrder(cart));
          }
        });

    blocTest('should emit [LOADING] and [LOADED]',
        build: () => bloc,
        seed: () =>
            UserCartsState.initial().copyWith(userCartsOption: some(userCarts)),
        act: (UserCartsBloc bloc) =>
            bloc.add(const UserCartsEvent.createOrders()),
        expect: () => [
              UserCartsState.initial()
                  .copyWith(userCartsOption: some(userCarts), isLoading: true),
              UserCartsState.initial().copyWith(
                  userCartsOption: none(),
                  isLoading: false,
                  sendOrderFailureOrUnitOption: some(right(unit))),
              UserCartsState.initial().copyWith(
                  userCartsOption: none(),
                  isLoading: false,
                  sendOrderFailureOrUnitOption: none()),
            ]);

    blocTest('should emit [LOADING] and [ERROR] if sending an order failed',
        build: () => bloc,
        seed: () =>
            UserCartsState.initial().copyWith(userCartsOption: some(userCarts)),
        act: (UserCartsBloc bloc) =>
            bloc.add(const UserCartsEvent.createOrders()),
        setUp: () => when(mockCartFacade.sendOrder(any))
            .thenAnswer((_) async => left(const CartFailure.unexpected())),
        expect: () => [
              UserCartsState.initial()
                  .copyWith(userCartsOption: some(userCarts), isLoading: true),
              UserCartsState.initial().copyWith(
                  userCartsOption: some(userCarts),
                  isLoading: false,
                  sendOrderFailureOrUnitOption:
                      some(left(const CartFailure.unexpected()))),
              UserCartsState.initial().copyWith(
                  userCartsOption: some(userCarts),
                  isLoading: false,
                  sendOrderFailureOrUnitOption: none()),
            ]);
    blocTest('should emit[ERROR] if userCartsOption is none',
        build: () => bloc,
        act: (UserCartsBloc bloc) =>
            bloc.add(const UserCartsEvent.createOrders()),
        setUp: () => when(mockCartFacade.sendOrder(any))
            .thenAnswer((_) async => left(const CartFailure.unexpected())),
        expect: () => [
              UserCartsState.initial().copyWith(
                  sendOrderFailureOrUnitOption:
                      some(left(const CartFailure.emptyCart()))),
              UserCartsState.initial().copyWith(
                sendOrderFailureOrUnitOption: none(),
              ),
            ]);
  });
  group('watchAllCarts', () {
    blocTest('should check internet connection status',
        build: () => bloc,
        act: (UserCartsBloc bloc) =>
            bloc.add(const UserCartsEvent.watchAllCarts()),
        verify: (_) {
          verify(mockNetworkInfo.isConnected);
        });

    blocTest('should emit [FAILURE] if no internet connection is present',
        build: () => bloc,
        setUp: () =>
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false),
        act: (UserCartsBloc bloc) =>
            bloc.add(const UserCartsEvent.watchAllCarts()),
        expect: () => [
              UserCartsState.initial().copyWith(
                  failureOption: some(const CartFailure.noInternetConnection()))
            ]);

    blocTest('should call cartFacade.getUserCarts',
        build: () => bloc,
        act: (UserCartsBloc bloc) =>
            bloc.add(const UserCartsEvent.watchAllCarts()),
        verify: (_) {
          verify(mockCartFacade.getUserCarts());
        });

    blocTest('should emit [LOADING], and [ERROR] if returned a failure',
        build: () => bloc,
        setUp: () {
          when(mockCartFacade.getUserCarts()).thenAnswer((_) =>
              Stream.fromFuture(
                  Future.value(left(const CartFailure.emptyCart()))));
        },
        act: (UserCartsBloc bloc) =>
            bloc.add(const UserCartsEvent.watchAllCarts()),
        expect: () => [
              UserCartsState.initial().copyWith(isLoading: true),
              UserCartsState.initial()
                  .copyWith(failureOption: some(const CartFailure.emptyCart()))
            ]);

    blocTest('should emit [LOADING], and [LOADED] if returned the user carts',
        build: () => bloc,
        act: (UserCartsBloc bloc) =>
            bloc.add(const UserCartsEvent.watchAllCarts()),
        expect: () => [
              UserCartsState.initial().copyWith(isLoading: true),
              UserCartsState.initial()
                  .copyWith(userCartsOption: some(userCarts)),
            ]);
  });
}
