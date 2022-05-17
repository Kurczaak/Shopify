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

  group('getCurrentLocation', () {
    final callOutput = right<LocationFailure, Location>(mockLocation);

    test(
      'should call ShopifyLocationFacade.getCurrentLocation',
      () async {
        // arrange
        when(mockShopifyLocation.getCurrentLocation())
            .thenAnswer((_) async => callOutput);
        // act
        locationFacadeImpl.getCurrentLocation();
        // assert
        verify(mockShopifyLocation.getCurrentLocation()).called(1);
      },
    );
    test(
      'should return the result of ShopifyLocationFacade.getCurrentLocation',
      () async {
        // arrange
        when(mockShopifyLocation.getCurrentLocation())
            .thenAnswer((_) async => callOutput);
        // act
        final result = await locationFacadeImpl.getCurrentLocation();
        // assert
        expect(result, callOutput);
      },
    );
  });

  group('getUserLocation', () {
    final callOutput = right<LocationFailure, Location>(mockLocation);

    test(
      'should call ShopifyLocationFacade.getUserLocation',
      () async {
        // arrange
        when(mockShopifyLocation.getUserLocation())
            .thenAnswer((_) async => callOutput);
        // act
        locationFacadeImpl.getUserLocation();
        // assert
        verify(mockShopifyLocation.getUserLocation()).called(1);
      },
    );
    test(
      'should return the result of ShopifyLocationFacade.getUserLocation',
      () async {
        // arrange
        when(mockShopifyLocation.getUserLocation())
            .thenAnswer((_) async => callOutput);
        // act
        final result = await locationFacadeImpl.getUserLocation();
        // assert
        expect(result, callOutput);
      },
    );
  });

  group('setUserAddress', () {
    final callOutput = right<LocationFailure, Unit>(unit);

    test(
      'should call ShopifyLocationFacade.setUserAddress',
      () async {
        // arrange
        final tAddress = Address.empty();
        when(mockShopifyLocation.setUserAddress(tAddress))
            .thenAnswer((_) async => callOutput);
        // act
        locationFacadeImpl.setUserAddress(tAddress);
        // assert
        verify(mockShopifyLocation.setUserAddress(tAddress)).called(1);
      },
    );
    test(
      'should return the result of ShopifyLocationFacade.setUserAddress',
      () async {
        // arrange
        final tAddress = Address.empty();
        when(mockShopifyLocation.setUserAddress(tAddress))
            .thenAnswer((_) async => callOutput);
        // act
        final result = await locationFacadeImpl.setUserAddress(tAddress);
        // assert
        expect(result, callOutput);
      },
    );
  });
}
