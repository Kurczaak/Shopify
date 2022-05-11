import 'package:location/location.dart' as loc;
import 'package:shopify_client/domain/core/errors.dart';
import 'package:shopify_client/domain/core/failures.dart';
import 'package:shopify_client/domain/core/location/location.dart';

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
