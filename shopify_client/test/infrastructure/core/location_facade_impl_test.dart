import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/infrastructure/core/location_facade_impl.dart';
import 'package:shopify_domain/core.dart';

import 'location_facade_impl_test.mocks.dart';

@GenerateMocks([ShopifyLocationFacade, Location])
void main() {
  late MockShopifyLocationFacade mockShopifyLocation;
  late LocationFacadeImpl locationFacadeImpl;

  final mockLocation = MockLocation();
  setUp(() {
    mockShopifyLocation = MockShopifyLocationFacade();
    locationFacadeImpl = LocationFacadeImpl(mockShopifyLocation);
  });
  test(
    'getCurrentLocation should call ShopifyLocationFacade.getCurrentLocation',
    () async {
      // arrange
      when(mockShopifyLocation.getCurrentLocation())
          .thenAnswer((_) async => right(mockLocation));
      // act
      locationFacadeImpl.getCurrentLocation();
      // assert
      verify(mockShopifyLocation.getCurrentLocation()).called(1);
    },
  );

  test(
    'getUserLocation should call ShopifyLocationFacade.getUserLocation',
    () async {
      // arrange
      when(mockShopifyLocation.getUserLocation())
          .thenAnswer((_) async => right(mockLocation));
      // act
      locationFacadeImpl.getUserLocation();
      // assert
      verify(mockShopifyLocation.getUserLocation()).called(1);
    },
  );

  test(
    'setUserAddress should call ShopifyLocationFacade.setUserAddress',
    () async {
      // arrange
      final tAddress = Address.empty();
      when(mockShopifyLocation.setUserAddress(tAddress))
          .thenAnswer((_) async => right(unit));
      // act
      locationFacadeImpl.setUserAddress(tAddress);
      // assert
      verify(mockShopifyLocation.setUserAddress(tAddress)).called(1);
    },
  );
}
