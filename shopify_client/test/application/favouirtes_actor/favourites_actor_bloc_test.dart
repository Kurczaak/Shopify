import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/favouirtes_actor/favourites_actor_bloc.dart';
import 'package:shopify_client/domain/favourites/favourites_facade.dart';
import 'package:shopify_domain/favourites/favourite_failure.dart';
import 'package:shopify_domain/product.dart';
import '../../utils/fixture_reader.dart';
import 'favourites_actor_bloc_test.mocks.dart';

@GenerateMocks([IFavouritesFacade])
void main() {
  final jsonProduct = json.decode(fixture('priced_product.json'));
  final tProduct = PricedProductDto.fromJson(jsonProduct).toDomain();
  late MockIFavouritesFacade mockFavouritesFacade;
  late FavouritesActorBloc bloc;

  setUp(() {
    mockFavouritesFacade = MockIFavouritesFacade();
    bloc = FavouritesActorBloc(mockFavouritesFacade);

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
        act: (FavouritesActorBloc bloc) => bloc.add(
            FavouritesActorEvent.initialize(productId: tProduct.productId)),
        verify: (_) {
          verify(mockFavouritesFacade.isFavourite(tProduct.productId));
        });

    blocTest('should forward cartFacade result to the state',
        build: () => bloc,
        act: (FavouritesActorBloc bloc) => bloc.add(
            FavouritesActorEvent.initialize(productId: tProduct.productId)),
        expect: () =>
            [FavouritesActorState.initial().copyWith(isFavouirte: some(true))]);

    blocTest('should emit [ERROR] if failed to check if is favourite',
        build: () => bloc,
        setUp: () {
          when(mockFavouritesFacade.isFavourite(tProduct.productId)).thenAnswer(
              (_) async =>
                  left(const FavouriteFailure.insufficientPermission()));
        },
        act: (FavouritesActorBloc bloc) => bloc.add(
            FavouritesActorEvent.initialize(productId: tProduct.productId)),
        expect: () => [
              FavouritesActorState.initial().copyWith(
                  favouriteFailureOption:
                      some(const FavouriteFailure.insufficientPermission()))
            ]);
  });
  group('toggleFavourite', () {
    blocTest('should call cartFacade.isFavourite if isFavouriteOption is none',
        build: () => bloc,
        act: (FavouritesActorBloc bloc) =>
            bloc.add(FavouritesActorEvent.toggleFavourite(
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
        act: (FavouritesActorBloc bloc) =>
            bloc.add(FavouritesActorEvent.toggleFavourite(
              productId: tProduct.productId,
            )),
        expect: () => [
              FavouritesActorState.initial(),
              FavouritesActorState.initial().copyWith(
                  favouriteFailureOption:
                      some(const FavouriteFailure.insufficientPermission()))
            ]);

    blocTest(
      'should call addToFavourites if isFavouriteOption is some(false), and emit state with changed isFavoruiteOption',
      build: () => bloc,
      seed: () =>
          FavouritesActorState.initial().copyWith(isFavouirte: some(false)),
      act: (FavouritesActorBloc bloc) =>
          bloc.add(FavouritesActorEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.addToFavourites(tProduct.productId));
      },
      expect: () => [
        FavouritesActorState.initial().copyWith(isFavouirte: some(true)),
      ],
    );

    blocTest(
      'should call removeFromFavourites if isFavouriteOption is some(true), and emit state with changed isFavoruiteOption',
      build: () => bloc,
      seed: () =>
          FavouritesActorState.initial().copyWith(isFavouirte: some(true)),
      act: (FavouritesActorBloc bloc) =>
          bloc.add(FavouritesActorEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.removeFromFavourites(tProduct.productId));
      },
      expect: () => [
        FavouritesActorState.initial().copyWith(isFavouirte: some(false)),
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
          FavouritesActorState.initial().copyWith(isFavouirte: some(false)),
      act: (FavouritesActorBloc bloc) =>
          bloc.add(FavouritesActorEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.addToFavourites(tProduct.productId));
      },
      expect: () => [
        FavouritesActorState.initial().copyWith(isFavouirte: some(true)),
        FavouritesActorState.initial().copyWith(
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
          FavouritesActorState.initial().copyWith(isFavouirte: some(true)),
      act: (FavouritesActorBloc bloc) =>
          bloc.add(FavouritesActorEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.removeFromFavourites(tProduct.productId));
      },
      expect: () => [
        FavouritesActorState.initial().copyWith(isFavouirte: some(false)),
        FavouritesActorState.initial().copyWith(
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
          FavouritesActorState.initial().copyWith(isFavouirte: some(false)),
      act: (FavouritesActorBloc bloc) =>
          bloc.add(FavouritesActorEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.addToFavourites(tProduct.productId));
      },
      expect: () => [
        FavouritesActorState.initial().copyWith(isFavouirte: some(true)),
        FavouritesActorState.initial().copyWith(
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
          FavouritesActorState.initial().copyWith(isFavouirte: some(true)),
      act: (FavouritesActorBloc bloc) =>
          bloc.add(FavouritesActorEvent.toggleFavourite(
        productId: tProduct.productId,
      )),
      verify: (_) {
        verify(mockFavouritesFacade.removeFromFavourites(tProduct.productId));
      },
      expect: () => [
        FavouritesActorState.initial().copyWith(isFavouirte: some(false)),
        FavouritesActorState.initial().copyWith(
          isFavouirte: some(false),
          favouriteFailureOption:
              some(const FavouriteFailure.notInFavourites()),
        ),
      ],
    );
  });
}
