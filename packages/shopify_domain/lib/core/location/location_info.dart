import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart' as g;
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/core/address.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/core/location/location_failure.dart';

const timeoutDuration = Duration(seconds: 5);

abstract class LocationInfo {
  Future<Either<LocationFailure, Location>> getLocationFromAddress(
      Address address);
}

@LazySingleton(as: LocationInfo)
class LocationInfoImpl implements LocationInfo {
  final g.GeocodingPlatform geocodingPlatform;

  LocationInfoImpl(this.geocodingPlatform);

  @override
  Future<Either<LocationFailure, Location>> getLocationFromAddress(
      Address address) async {
    try {
      final locations = await geocodingPlatform
          .locationFromAddress(address.toString())
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
    }
  }
}
