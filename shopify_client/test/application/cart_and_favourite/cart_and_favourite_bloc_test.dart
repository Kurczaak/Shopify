import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/cart_and_favourite/cart_and_favourite_bloc.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
import 'package:shopify_client/domain/favourites/favourites_facade.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/favourites/favourite_failure.dart';
import 'package:shopify_domain/product.dart';
import '../../utils/fixture_reader.dart';
import 'cart_and_favourite_bloc_test.mocks.dart';

@GenerateMocks([ICartFacade, IFavouritesFacade])
void main() {
  final jsonProduct = json.decode(fixture('priced_product.json'));
  final tProduct = PricedProductDto.fromJson(jsonProduct).toDomain();
  late MockICartFacade mockCartFacade;
  late MockIFavouritesFacade mockFavouritesFacade;
  late CartAndFavouriteBloc bloc;

  setUp(() {
    mockCartFacade = MockICartFacade();
    mockFavouritesFacade = MockIFavouritesFacade();
    bloc = CartAndFavouriteBloc(
        cartFacade: mockCartFacade, favouritesFacade: mockFavouritesFacade);
    when(mockCartFacade.addProductToCart(tProduct, quantity: 1))
        .thenAnswer((_) async => right(unit));
    when(mockFavouritesFacade.isFavourite(tProduct.productId))
        .thenAnswer((_) async => right(true));
    when(mockFavouritesFacade.addToFavourites(tProduct.productId))
        .thenAnswer((_) async => right(unit));
    when(mockFavouritesFacade.removeFromFavourites(tProduct.productId))
        .thenAnswer((_) async => right(unit));
  });
  group('initialize', () {
    blocTest('should call cartFacade.isFavourite',
        build: () => bloc,
        act: (CartAndFavouriteBloc bloc) => bloc.add(
            CartAndFavouriteEvent.initialize(productId: tProduct.productId)),
        verify: (_) {
          verify(mockFavouritesFacade.isFavourite(tProduct.productId));
        });

    blocTest('should forward cartFacade result to the state',
        build: () => bloc,
        act: (CartAndFavouriteBloc bloc) => bloc.add(
            CartAndFavouriteEvent.initialize(productId: tProduct.productId)),
        expect: () => [
              CartAndFavouriteState.initial().copyWith(isFavouirte: some(true))
            ]);

    blocTest('should emit [ERROR] if failed to check if is favourite',
        build: () => bloc,
        setUp: () {
          when(mockFavouritesFacade.isFavourite(tProduct.productId)).thenAnswer(
              (_) async =>
                  left(const FavouriteFailure.insufficientPermission()));
        },
        act: (CartAndFavouriteBloc bloc) => bloc.add(
            CartAndFavouriteEvent.initialize(productId: tProduct.productId)),
        expect: () => [
              CartAndFavouriteState.initial().copyWith(
                  favouriteFailureOption:
                      some(const FavouriteFailure.insufficientPermission()))
            ]);
  });
  group('toggleFavourite', () {
    blocTest('should call cartFacade.isFavourite if isFavouriteOption is none',
        build: () => bloc,
        act: (CartAndFavouriteBloc bloc) =>
            bloc.add(CartAndFavouriteEvent.toggleFavourite(
              productId: tProduct.productId,
            )),
        verify: (_) {
          verify(mockFavouritesFacade.isFavourite(tProduct.productId));
        });

    blocTest('should emit [ERROR] if failed to check if is favourite',
        build: () => bloc,
        setUp: () => when(mockFavouritesFacade.isFavourite(tProduct.productId))
            .thenAnswer((_) async =>
                left(const FavouriteFailure.insufficientPermission())),
        act: (CartAndFavouriteBloc bloc) =>
            bloc.add(CartAndFavouriteEvent.toggleFavourite(
              productId: tProduct.productId,
            )),
        expect: () => [
              CartAndFavouriteState.initial().copyWith(
                  favouriteFailureOption:
                      some(const FavouriteFailure.insufficientPermission()))
            ]);

    blocTest(
      'should call addToFavourites if isFavouriteOption is some(false), and emit state with changed isFavoruiteOption',
      build: () => bloc,
      seed: () =>
          CartAndFavouriteState.initial().copyWith(isFavouirte: some(false)),
      act: (CartAndFavouriteBloc bloc) =>
          bloc.add(CartAndFavouriteEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.addToFavourites(tProduct.productId));
      },
      expect: () => [
        CartAndFavouriteState.initial().copyWith(isFavouirte: some(true)),
      ],
    );

    blocTest(
      'should call removeFromFavourites if isFavouriteOption is some(true), and emit state with changed isFavoruiteOption',
      build: () => bloc,
      seed: () =>
          CartAndFavouriteState.initial().copyWith(isFavouirte: some(true)),
      act: (CartAndFavouriteBloc bloc) =>
          bloc.add(CartAndFavouriteEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.removeFromFavourites(tProduct.productId));
      },
      expect: () => [
        CartAndFavouriteState.initial().copyWith(isFavouirte: some(false)),
      ],
    );

    blocTest(
      'should change isFavouriteOption back to some(false) if addToFavourites returned a failure',
      build: () => bloc,
      setUp: () =>
          when(mockFavouritesFacade.addToFavourites(tProduct.productId))
              .thenAnswer((_) async {
        return left(const FavouriteFailure.noInternetConnection());
      }),
      seed: () =>
          CartAndFavouriteState.initial().copyWith(isFavouirte: some(false)),
      act: (CartAndFavouriteBloc bloc) =>
          bloc.add(CartAndFavouriteEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.addToFavourites(tProduct.productId));
      },
      expect: () => [
        CartAndFavouriteState.initial().copyWith(isFavouirte: some(true)),
        CartAndFavouriteState.initial().copyWith(
          isFavouirte: some(false),
          favouriteFailureOption:
              some(const FavouriteFailure.noInternetConnection()),
        ),
      ],
    );
    blocTest(
      'should change isFavouriteOption back to some(true) if removeFromFavourites returned a failure',
      build: () => bloc,
      setUp: () =>
          when(mockFavouritesFacade.removeFromFavourites(tProduct.productId))
              .thenAnswer((_) async {
        return left(const FavouriteFailure.noInternetConnection());
      }),
      seed: () =>
          CartAndFavouriteState.initial().copyWith(isFavouirte: some(true)),
      act: (CartAndFavouriteBloc bloc) =>
          bloc.add(CartAndFavouriteEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.removeFromFavourites(tProduct.productId));
      },
      expect: () => [
        CartAndFavouriteState.initial().copyWith(isFavouirte: some(false)),
        CartAndFavouriteState.initial().copyWith(
          isFavouirte: some(true),
          favouriteFailureOption:
              some(const FavouriteFailure.noInternetConnection()),
        ),
      ],
    );

    blocTest(
      'should not change isFavouriteOption back if the failure is AlreadyInFavourites',
      build: () => bloc,
      setUp: () =>
          when(mockFavouritesFacade.addToFavourites(tProduct.productId))
              .thenAnswer((_) async {
        return left(const FavouriteFailure.alreadyInFavoruites());
      }),
      seed: () =>
          CartAndFavouriteState.initial().copyWith(isFavouirte: some(false)),
      act: (CartAndFavouriteBloc bloc) =>
          bloc.add(CartAndFavouriteEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.addToFavourites(tProduct.productId));
      },
      expect: () => [
        CartAndFavouriteState.initial().copyWith(isFavouirte: some(true)),
        CartAndFavouriteState.initial().copyWith(
          isFavouirte: some(true),
          favouriteFailureOption:
              some(const FavouriteFailure.alreadyInFavoruites()),
        ),
      ],
    );

    blocTest(
      'should not change isFavouriteOption back if the failure is NotInFavourites',
      build: () => bloc,
      setUp: () =>
          when(mockFavouritesFacade.removeFromFavourites(tProduct.productId))
              .thenAnswer((_) async {
        return left(const FavouriteFailure.notInFavourites());
      }),
      seed: () =>
          CartAndFavouriteState.initial().copyWith(isFavouirte: some(true)),
      act: (CartAndFavouriteBloc bloc) =>
          bloc.add(CartAndFavouriteEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.removeFromFavourites(tProduct.productId));
      },
      expect: () => [
        CartAndFavouriteState.initial().copyWith(isFavouirte: some(false)),
        CartAndFavouriteState.initial().copyWith(
          isFavouirte: some(false),
          favouriteFailureOption:
              some(const FavouriteFailure.notInFavourites()),
        ),
      ],
    );
  });
  group('addToCart', () {
    blocTest('should emit [LOADING], and [LOADED] state if success',
        build: () => bloc,
        act: (CartAndFavouriteBloc bloc) => bloc.add(
            CartAndFavouriteEvent.addToCart(product: tProduct, quantity: 1)),
        expect: () => [
              CartAndFavouriteState(
                  favouriteFailureOption: none(),
                  isFavouirte: none(),
                  isLoading: true,
                  cartFailureOption: none()),
              CartAndFavouriteState(
                  favouriteFailureOption: none(),
                  isFavouirte: none(),
                  isLoading: false,
                  cartFailureOption: none())
            ]);
    blocTest('should emit [ERROR] if the product or quantity are invalid',
        build: () => bloc,
        act: (CartAndFavouriteBloc bloc) => bloc.add(
            CartAndFavouriteEvent.addToCart(product: tProduct, quantity: -1)),
        expect: () => [
              CartAndFavouriteState(
                  favouriteFailureOption: none(),
                  isFavouirte: none(),
                  isLoading: false,
                  cartFailureOption: some(const CartFailure.invalidCartItem())),
            ]);
    blocTest('should emit [ERROR] if adding to cart failed',
        build: () => bloc,
        act: (CartAndFavouriteBloc bloc) => bloc.add(
            CartAndFavouriteEvent.addToCart(product: tProduct, quantity: 1)),
        setUp: () {
          when(mockCartFacade.addProductToCart(tProduct, quantity: 1))
              .thenAnswer(
                  (_) async => const Left(CartFailure.noInternetConnection()));
        },
        expect: () => [
              CartAndFavouriteState(
                  favouriteFailureOption: none(),
                  isFavouirte: none(),
                  isLoading: true,
                  cartFailureOption: none()),
              CartAndFavouriteState(
                  favouriteFailureOption: none(),
                  isFavouirte: none(),
                  isLoading: false,
                  cartFailureOption:
                      some(const CartFailure.noInternetConnection())),
            ]);
  });
}
