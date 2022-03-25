import 'package:dartz/dartz.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/annotations.dart';
import 'package:shopify_client/application/shop_watcher/shop_watcher_bloc.dart';
import 'package:shopify_client/domain/core/location/location.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/domain/shopping/i_shop_repository.dart';
import 'package:shopify_client/domain/shopping/shop.dart';
import 'package:shopify_client/domain/shopping/shop_failure.dart';

import 'shop_watcher_bloc_test.mocks.dart';

@GenerateMocks([IShopRepository])
void main() {
  final mockShopRepository = MockIShopRepository();
  const tRadius = 10.0;
  final tLocation = Location.empty();
  final tShop = Shop.empty();
  final shopsList = KtList.from([tShop, tShop, tShop]);
  blocTest(
    'Should call IShopRepository.watchNearby',
    build: () => ShopWatcherBloc(mockShopRepository),
    act: (ShopWatcherBloc bloc) => bloc.add(
      ShopWatcherEvent.watchNearbyShops(
        radius: tRadius,
      ),
    ),
    verify: (_) =>
        verify(mockShopRepository.watchNearby(tLocation, tRadius.toDouble())),
  );

  blocTest(
    'Should emit [LOADING], and [ERROR] state when the repository returns a shopFailure',
    build: () => ShopWatcherBloc(mockShopRepository),
    setUp: () =>
        when(mockShopRepository.watchNearby(tLocation, tRadius.toDouble()))
            .thenAnswer(
      (_) => Stream.fromIterable([left(const ShopFailure.unexpected())]),
    ),
    act: (ShopWatcherBloc bloc) => bloc.add(
      ShopWatcherEvent.watchNearbyShops(
        radius: tRadius,
      ),
    ),
    expect: () => const [
      ShopWatcherState.loading(),
      ShopWatcherState.error(failure: ShopFailure.unexpected())
    ],
  );

  blocTest(
    'Should emit [LOADING], and [LOADED] states when the repository returns list of Shops',
    build: () => ShopWatcherBloc(mockShopRepository),
    setUp: () =>
        when(mockShopRepository.watchNearby(tLocation, tRadius.toDouble()))
            .thenAnswer(
      (_) => Stream.fromIterable([right(shopsList)]),
    ),
    act: (ShopWatcherBloc bloc) => bloc.add(
      ShopWatcherEvent.watchNearbyShops(
        radius: tRadius,
      ),
    ),
    expect: () => [
      const ShopWatcherState.loading(),
      ShopWatcherState.loaded(shops: shopsList)
    ],
  );
}
