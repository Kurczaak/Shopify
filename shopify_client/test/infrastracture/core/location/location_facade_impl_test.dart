import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart' as loc;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/domain/core/location/location.dart';
import 'package:shopify_client/domain/core/location/location_failure.dart';
import 'package:shopify_client/infrastructure/core/location/location_facade_impl.dart';

import 'location_facade_impl_test.mocks.dart';

@GenerateMocks([loc.Location, loc.LocationData])
void main() {
  late LocationFacadeImpl locationFacade;
  late MockLocation mockLocationService;
  final mockLocationData = MockLocationData();
  const tLatitude = 56.78;
  const tLongitude = 12.34;
  final tLocation =
      Location.fromLatLang(latitude: tLatitude, longitude: tLongitude);

  setUp(() {
    mockLocationService = MockLocation();
    locationFacade = LocationFacadeImpl(mockLocationService);
  });

  test(
    'should check if permissions are granted and return according LocationFailure',
    () async {
      // arrange
      when(mockLocationService.requestPermission())
          .thenAnswer((_) async => loc.PermissionStatus.denied);
      when(mockLocationService.hasPermission())
          .thenAnswer((_) async => loc.PermissionStatus.denied);
      // act
      final result = await locationFacade.getCurrentLocation();
      // assert
      verify(mockLocationService.hasPermission());
      expect(result, left(const LocationFailure.permissionDenied()));
    },
  );

  test(
    'should call Location service',
    () async {
      //arrange
      when(mockLocationService.requestPermission())
          .thenAnswer((_) async => loc.PermissionStatus.granted);
      when(mockLocationService.hasPermission())
          .thenAnswer((_) async => loc.PermissionStatus.granted);
      when(mockLocationService.getLocation())
          .thenAnswer((_) async => mockLocationData);
      when(mockLocationData.longitude).thenReturn(tLongitude);
      when(mockLocationData.latitude).thenReturn(tLatitude);
      // act
      await locationFacade.getCurrentLocation();
      // assert
      verify(mockLocationService.getLocation());
    },
  );

  test(
    'should return a valid Location',
    () async {
      // arrange
      when(mockLocationService.requestPermission())
          .thenAnswer((_) async => loc.PermissionStatus.granted);
      when(mockLocationService.hasPermission())
          .thenAnswer((_) async => loc.PermissionStatus.granted);
      when(mockLocationService.getLocation())
          .thenAnswer((_) async => mockLocationData);
      when(mockLocationData.longitude).thenReturn(tLongitude);
      when(mockLocationData.latitude).thenReturn(tLatitude);
      // act
      final result = await locationFacade.getCurrentLocation();
      // assert
      expect(result, equals(right(tLocation)));
    },
  );

  test(
    'should return unexpected LocationFailure when LocationData contains nulls',
    () async {
      // arrange
      when(mockLocationService.requestPermission())
          .thenAnswer((_) async => loc.PermissionStatus.granted);
      when(mockLocationService.hasPermission())
          .thenAnswer((_) async => loc.PermissionStatus.granted);
      when(mockLocationService.getLocation())
          .thenAnswer((_) async => mockLocationData);
      when(mockLocationData.longitude).thenReturn(null);
      when(mockLocationData.latitude).thenReturn(null);
      // act
      final result = await locationFacade.getCurrentLocation();
      // assert
      expect(result, left(const LocationFailure.unexpected()));
    },
  );

  test(
    'should return unexpected LocationFailure when Location throws PlatformException',
    () async {
      // arrange
      when(mockLocationService.requestPermission())
          .thenAnswer((_) async => loc.PermissionStatus.granted);
      when(mockLocationService.hasPermission())
          .thenAnswer((_) async => loc.PermissionStatus.granted);
      when(mockLocationService.getLocation())
          .thenThrow(PlatformException(code: 'NULL_RESULT'));

      // act
      final result = await locationFacade.getCurrentLocation();
      // assert
      expect(result, left(const LocationFailure.unexpected()));
    },
  );
}
