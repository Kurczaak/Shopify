import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/cart/cart_bloc.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';

import '../../fixtures/user_carts_fixture.dart';
import 'cart_bloc_test.mocks.dart';

@GenerateMocks([ICartFacade, NetworkInfo])
void main() {
  late MockICartFacade mockCartFacade;
  late MockNetworkInfo mockNetworkInfo;
  late CartBloc bloc;
  late UserCarts userCarts;

  setUp(() {
    mockCartFacade = MockICartFacade();
    mockNetworkInfo = MockNetworkInfo();
    bloc = CartBloc(mockCartFacade, mockNetworkInfo);
    userCarts =
        UserCarts(id: UniqueId(), carts: NonEmptyList(KtList.from([tCart])));
    when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    when(mockCartFacade.getUserCarts())
        .thenAnswer((_) => Stream.fromFuture(Future.value((right(userCarts)))));
  });
  group('watchAllCarts', () {
    blocTest('should check internet connection status',
        build: () => bloc,
        act: (CartBloc bloc) => bloc.add(const CartEvent.watchAllCarts()),
        verify: (_) {
          verify(mockNetworkInfo.isConnected);
        });

    blocTest('should emit [FAILURE] if no internet connection is present',
        build: () => bloc,
        setUp: () =>
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false),
        act: (CartBloc bloc) => bloc.add(const CartEvent.watchAllCarts()),
        expect: () => [
              CartState.initial().copyWith(
                  failureOption: some(const CartFailure.noInternetConnection()))
            ]);

    blocTest('should call cartFacade.getUserCarts',
        build: () => bloc,
        act: (CartBloc bloc) => bloc.add(const CartEvent.watchAllCarts()),
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
        act: (CartBloc bloc) => bloc.add(const CartEvent.watchAllCarts()),
        expect: () => [
              CartState.initial().copyWith(isLoading: true),
              CartState.initial()
                  .copyWith(failureOption: some(const CartFailure.emptyCart()))
            ]);

    blocTest('should emit [LOADING], and [LOADED] if returned the user carts',
        build: () => bloc,
        act: (CartBloc bloc) => bloc.add(const CartEvent.watchAllCarts()),
        expect: () => [
              CartState.initial().copyWith(isLoading: true),
              CartState.initial().copyWith(userCartsOption: some(userCarts)),
            ]);
  });
}
