import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/cart_and_favourite/cart_and_favourite_bloc.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/product.dart';
import '../../utils/fixture_reader.dart';
import 'cart_and_favourite_bloc_test.mocks.dart';

@GenerateMocks([ICartFacade])
void main() {
  final jsonProduct = json.decode(fixture('priced_product.json'));
  final tProduct = PricedProductDto.fromJson(jsonProduct).toDomain();
  late MockICartFacade mockFacade;
  late CartAndFavouriteBloc bloc;

  setUp(() {
    mockFacade = MockICartFacade();
    bloc = CartAndFavouriteBloc(mockFacade);
    when(mockFacade.addProductToCart(tProduct, quantity: 1))
        .thenAnswer((_) async => right(unit));
  });
  group('addToCart', () {
    blocTest('should emit [LOADING], and [LOADED] state if success',
        build: () => bloc,
        act: (CartAndFavouriteBloc bloc) => bloc.add(
            CartAndFavouriteEvent.addToCart(product: tProduct, quantity: 1)),
        expect: () => [
              CartAndFavouriteState(
                  isFavouirte: false, isLoading: true, failureOption: none()),
              CartAndFavouriteState(
                  isFavouirte: false, isLoading: false, failureOption: none())
            ]);
    blocTest('should emit [ERROR] if the product or quantity are invalid',
        build: () => bloc,
        act: (CartAndFavouriteBloc bloc) => bloc.add(
            CartAndFavouriteEvent.addToCart(product: tProduct, quantity: -1)),
        expect: () => [
              CartAndFavouriteState(
                  isFavouirte: false,
                  isLoading: false,
                  failureOption: some(const CartFailure.invalidCartItem())),
            ]);
    blocTest('should emit [ERROR] if adding to cart failed',
        build: () => bloc,
        act: (CartAndFavouriteBloc bloc) => bloc.add(
            CartAndFavouriteEvent.addToCart(product: tProduct, quantity: 1)),
        setUp: () {
          when(mockFacade.addProductToCart(tProduct, quantity: 1)).thenAnswer(
              (_) async => const Left(CartFailure.noInternetConnection()));
        },
        expect: () => [
              CartAndFavouriteState(
                  isFavouirte: false, isLoading: true, failureOption: none()),
              CartAndFavouriteState(
                  isFavouirte: false,
                  isLoading: false,
                  failureOption:
                      some(const CartFailure.noInternetConnection())),
            ]);
  });
}
