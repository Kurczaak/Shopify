import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:shopify_client/application/shop_watcher/shop_watcher_bloc.dart';
import 'package:shopify_client/domain/core/location.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/domain/shopping/i_shop_repository.dart';

import 'shop_watcher_bloc_test.mocks.dart';

@GenerateMocks([IShopRepository])
void main() {
  final mockShopRepository = MockIShopRepository();

  blocTest('Should call IShopRepository.watchNearby',
      build: () => ShopWatcherBloc(mockShopRepository),
      act: (ShopWatcherBloc bloc) => bloc.add(
            ShopWatcherEvent.watchNearbyShops(
              radius: 10,
              location: Location.empty(),
            ),
          ),
      verify: (_) =>
          verify(mockShopRepository.watchNearby(Location.empty(), 10)));
}
