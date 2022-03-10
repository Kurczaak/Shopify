import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/core/location/location_failure.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/core/location/location_info.dart';
import 'package:geocoding/geocoding.dart' as geo;

import 'location_info_test.mocks.dart';

@GenerateMocks([geo.GeocodingPlatform])
void main() {
  final mockGeocodingPlatform = MockGeocodingPlatform();
  final locationInfo = LocationInfoImpl(mockGeocodingPlatform);

  final tAddress = Address(
    streetName: StreetName('Imaginary St'),
    streetNumber: StreetNumber('38A'),
    apartmentNumber: AddressNumber(''),
    city: CityName('Warsaw'),
    postalCode: PostalCode('99-123'),
  );

  final tGeoLocation =
      geo.Location(latitude: 21, longitude: 31, timestamp: DateTime.now());
  final tGeoLocationsList = [tGeoLocation, tGeoLocation, tGeoLocation];
  final tLocation = Location.fromLatLang(latitude: 21, longitude: 31);

  test(
    'should return location based on the address',
    () async {
      // arrange
      when(mockGeocodingPlatform.locationFromAddress(tAddress.toString()))
          .thenAnswer((_) async => tGeoLocationsList);
      // act
      final result = await locationInfo.getLocationFromAddress(tAddress);
      // assert
      verify(mockGeocodingPlatform.locationFromAddress(any));
      expect(result, right(tLocation));
    },
  );

  test(
    'should return LocationFailure if returned locations list is empty',
    () async {
      // arrange
      when(mockGeocodingPlatform.locationFromAddress(tAddress.toString()))
          .thenAnswer((_) async => []);
      // act
      final result = await locationInfo.getLocationFromAddress(tAddress);
      // assert
      expect(result, left(const LocationFailure.noLocationFound()));
    },
  );

  test(
    'should return LocationFailure if unimplemented error has been thrown',
    () async {
      // arrange
      when(mockGeocodingPlatform.locationFromAddress(tAddress.toString()))
          .thenThrow(UnimplementedError());
      // act
      final result = await locationInfo.getLocationFromAddress(tAddress);
      // assert
      expect(result, left(const LocationFailure.unexpected()));
    },
  );
}
