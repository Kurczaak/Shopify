import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:geopoint/geopoint.dart';
import 'package:shopify_manager/domain/core/value_transformers.dart';

part 'location_dtos.freezed.dart';
part 'location_dtos.g.dart';

@freezed
class LocationDto with _$LocationDto {
  const LocationDto._();
  const factory LocationDto({
    @GeoPointConverter() required GeoPoint geopoint,
    required String geohash,
  }) = _LocationDto;

  factory LocationDto.fromDomain(Location location) {
    return LocationDto(
        geopoint: GeoPoint(
            latitude: location.latitude, longitude: location.longitude),
        geohash: location.geohash);
  }

  factory LocationDto.fromGeoPoint(GeoPoint geoPoint) {
    return LocationDto(
        geopoint: geoPoint,
        geohash: latLangToHash(geoPoint.latitude, geoPoint.longitude));
  }

  Location toDomain() {
    return Location(
        geohash: geohash,
        latitude: geopoint.latitude,
        longitude: geopoint.longitude);
  }

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);
}

class GeoPointConverter implements JsonConverter<GeoPoint, Object> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(dynamic json) {
    return GeoPoint.fromJson(json);
  }

  @override
  Object toJson(GeoPoint geopoint) => geopoint.toGeoJsonFeatureString();
}
