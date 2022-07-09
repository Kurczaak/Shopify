import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/cart_item/cart_item_bloc.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';

import '../../utils/fixture_reader.dart';
import 'cart_item_bloc_test.mocks.dart';

@GenerateMocks([ICartFacade])
void main() {
  late MockICartFacade mockCartFacade;
  late CartItemBloc bloc;
  final jsonProduct = json.decode(fixture('priced_product.json'));
  final tProduct = PricedProductDto.fromJson(jsonProduct).toDomain();
  final cartItem =
      CartItem(id: UniqueId(), product: tProduct, quantity: NonnegativeInt(5));
  late CartItemState initializedState;
  setUp(() {
    mockCartFacade = MockICartFacade();
    bloc = CartItemBloc(mockCartFacade);
    initializedState =
        CartItemState.initial().copyWith(cartItemOption: some(cartItem));
    when(mockCartFacade.deleteCartItem(any))
        .thenAnswer((_) async => right(unit));
    when(mockCartFacade.incrementCartItem(any))
        .thenAnswer((_) async => right(unit));
  });
  group('increment', () {
    blocTest('should call facade.incrementCartItem',
        build: () => bloc,
        seed: () => initializedState,
        act: (CartItemBloc bloc) => bloc.add(const CartItemEvent.increment()),
        verify: (_) {
          verify(mockCartFacade.incrementCartItem(cartItem));
        });

    blocTest('should emit [LOADING] and [LOADED]',
        build: () => bloc,
        seed: () => initializedState,
        act: (CartItemBloc bloc) => bloc.add(const CartItemEvent.increment()),
        expect: () => [
              initializedState.copyWith(isLoading: true),
              initializedState.copyWith(
                isLoading: false,
                cartItemOption:
                    some(cartItem.copyWith(quantity: NonnegativeInt(6))),
              ),
            ]);
    blocTest('should emit [LOADING] and [ERROR] if failed to increment',
        build: () => bloc,
        seed: () => initializedState,
        setUp: () => when(mockCartFacade.incrementCartItem(any)).thenAnswer(
            (_) async => left(const CartFailure.noInternetConnection())),
        act: (CartItemBloc bloc) => bloc.add(const CartItemEvent.increment()),
        expect: () => [
              initializedState.copyWith(isLoading: true),
              initializedState.copyWith(
                  isLoading: false,
                  failureOption:
                      some(const CartFailure.noInternetConnection())),
            ]);

    blocTest('should emit  [ERROR] if the cart item is invalid',
        build: () => bloc,
        seed: () => initializedState.copyWith(
            cartItemOption:
                some(cartItem.copyWith(quantity: NonnegativeInt(-1)))),
        act: (CartItemBloc bloc) => bloc.add(const CartItemEvent.increment()),
        expect: () => [
              initializedState.copyWith(
                  cartItemOption:
                      some(cartItem.copyWith(quantity: NonnegativeInt(-1))),
                  isLoading: false,
                  failureOption: some(const CartFailure.invalidCartItem()))
            ]);
    blocTest('should emit  [ERROR] if cart item is none',
        build: () => bloc,
        act: (CartItemBloc bloc) => bloc.add(const CartItemEvent.increment()),
        expect: () => [
              CartItemState.initial().copyWith(
                  failureOption: some(const CartFailure.itemDoesNotExist()))
            ]);
  });
  group('remove', () {
    blocTest('should call facade.deleteCartItem',
        build: () => bloc,
        seed: () => initializedState,
        act: (CartItemBloc bloc) => bloc.add(const CartItemEvent.remove()),
        verify: (_) {
          verify(mockCartFacade.deleteCartItem(cartItem));
        });
    blocTest('should emit [LOADING] and [LOADED]',
        build: () => bloc,
        seed: () => initializedState,
        act: (CartItemBloc bloc) => bloc.add(const CartItemEvent.remove()),
        expect: () => [
              initializedState.copyWith(isLoading: true),
              initializedState.copyWith(
                isLoading: false,
                cartItemOption: none(),
              ),
            ]);
    blocTest('should emit [LOADING] and [ERROR] if failed to remove',
        build: () => bloc,
        seed: () => initializedState,
        setUp: () => when(mockCartFacade.deleteCartItem(any)).thenAnswer(
            (_) async => left(const CartFailure.noInternetConnection())),
        act: (CartItemBloc bloc) => bloc.add(const CartItemEvent.remove()),
        expect: () => [
              initializedState.copyWith(isLoading: true),
              initializedState.copyWith(
                  isLoading: false,
                  failureOption:
                      some(const CartFailure.noInternetConnection())),
            ]);

    blocTest('should emit  [ERROR] if the cart item is invalid',
        build: () => bloc,
        seed: () => initializedState.copyWith(
            cartItemOption:
                some(cartItem.copyWith(quantity: NonnegativeInt(-1)))),
        act: (CartItemBloc bloc) => bloc.add(const CartItemEvent.remove()),
        expect: () => [
              initializedState.copyWith(
                  cartItemOption:
                      some(cartItem.copyWith(quantity: NonnegativeInt(-1))),
                  isLoading: false,
                  failureOption: some(const CartFailure.invalidCartItem()))
            ]);
    blocTest('should emit  [ERROR] if cart item is none',
        build: () => bloc,
        act: (CartItemBloc bloc) => bloc.add(const CartItemEvent.remove()),
        expect: () => [
              CartItemState.initial().copyWith(
                  failureOption: some(const CartFailure.itemDoesNotExist()))
            ]);
  });
}
