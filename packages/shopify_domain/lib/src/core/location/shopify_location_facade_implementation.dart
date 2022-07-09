import 'dart:async';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';

import 'package:location/location.dart' as loc;
import 'package:geocoding/geocoding.dart' as g;
import 'package:shopify_domain/core.dart';
import 'location_data_mapper.dart';

@LazySingleton(as: ShopifyLocationFacade)
class ShopifyLocationFacadeImpl implements ShopifyLocationFacade {
  final loc.Location _locationService;
  final g.GeocodingPlatform geocodingPlatform;

  ShopifyLocationFacadeImpl(this._locationService, this.geocodingPlatform);
  @override
  Future<Either<LocationFailure, Location>> getCurrentLocation() async {
    await _locationService.requestPermission();
    final permissionStatus = await _locationService.hasPermission();
    if (permissionStatus == loc.PermissionStatus.denied ||
        permissionStatus == loc.PermissionStatus.deniedForever) {
      return left(const LocationFailure.permissionDenied());
    }
    try {
      final locationData = await _locationService.getLocation();
      final location = locationData.toDomain();
      return (right(location));
    } on UnexpectedValueError catch (_) {
      return left(const LocationFailure.unexpected());
    } on PlatformException catch (_) {
      return left(const LocationFailure.unexpected());
    } on g.NoResultFoundException {
      return left(const LocationFailure.noLocationFound());
    }
  }

  @override
  Future<Either<LocationFailure, Location>> getUserLocation() {
    // TODO: implement getUserLocation
    throw UnimplementedError();
  }

  @override
  Future<Either<LocationFailure, Unit>> setUserAddress(Address address) {
    // TODO: implement setUserAddress
    throw UnimplementedError();
  }

  @override
  Future<Either<LocationFailure, Location>> getLocationFromAddress(
      Address address) async {
    try {
      final locations = await geocodingPlatform
          .locationFromAddress(address.toString(), localeIdentifier: 'pl_PL')
          .timeout(timeoutDuration);
      if (locations.isEmpty) {
        return left(const LocationFailure.noLocationFound());
      } else {
        final location = locations.first;

        return right(Location.fromLatLang(
            latitude: location.latitude, longitude: location.longitude));
      }
    } on PlatformException catch (_) {
      //TODO LOG THIS ERROR
      return left(const LocationFailure.unexpected());
    } on TimeoutException catch (_) {
      return left(const LocationFailure.timeout());
    } on g.NoResultFoundException {
      return left(const LocationFailure.noLocationFound());
    }
  }

  @override
  Future<Either<LocationFailure, Location>> getLocationFromString(
      String input) async {
    try {
      final locations = await geocodingPlatform
          .locationFromAddress(input, localeIdentifier: 'pl_PL')
          .timeout(timeoutDuration);
      if (locations.isEmpty) {
        return left(const LocationFailure.noLocationFound());
      } else {
        final location = locations.first;

        return right(Location.fromLatLang(
            latitude: location.latitude, longitude: location.longitude));
      }
    } on PlatformException catch (_) {
      //TODO LOG THIS ERROR
      return left(const LocationFailure.unexpected());
    } on TimeoutException catch (_) {
      return left(const LocationFailure.timeout());
    } on g.NoResultFoundException {
      return left(const LocationFailure.noLocationFound());
    }
  }
}
