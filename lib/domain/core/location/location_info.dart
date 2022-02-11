import 'package:geocoding/geocoding.dart' as g;
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/location.dart';

abstract class LocationInfo {
  Future<Location> getLocationFromAddress(Address address);
}

class LocationInfoImpl implements LocationInfo {
  final g.GeocodingPlatform geocodingPlatform;

  LocationInfoImpl(this.geocodingPlatform);

  @override
  Future<Location> getLocationFromAddress(Address address) async {
    final locations =
        await geocodingPlatform.locationFromAddress(address.toString());
    final location = locations.first;
    return Future.value(Location.fromLatLang(
        latitude: location.latitude, longitude: location.longitude));
  }
}
