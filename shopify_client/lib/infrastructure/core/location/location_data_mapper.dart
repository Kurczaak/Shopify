import 'package:location/location.dart' as loc;
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core.dart';

extension LocationDataDomainX on loc.LocationData {
  Location toDomain() {
    if (latitude != null && longitude != null) {
      return Location.fromLatLang(latitude: latitude!, longitude: longitude!);
    } else {
      throw UnexpectedValueError(
          const ValueFailure.core(CoreValueFailure<loc.LocationData>.empty()));
    }
  }
}
