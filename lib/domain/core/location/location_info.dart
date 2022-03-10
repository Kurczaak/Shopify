import 'package:dartz/dartz.dart';
import 'package:geocoding/geocoding.dart' as g;
import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/core/location/location_failure.dart';

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
    //TODO WHAT IF LOCATIONS LIST IS EMPTY????
    try {
      final locations =
          await geocodingPlatform.locationFromAddress(address.toString());
      if (locations.isEmpty) {
        return left(const LocationFailure.noLocationFound());
      } else {
        final location = locations.first;
        return right(Location.fromLatLang(
            latitude: location.latitude, longitude: location.longitude));
      }
    } on UnimplementedError catch (_) {
      //TODO LOG THIS ERROR
      return left(const LocationFailure.unexpected());
    }
  }
}
