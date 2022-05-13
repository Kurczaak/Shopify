import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopify_domain/core.dart';

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
        geopoint: GeoPoint(location.latitude, location.longitude),
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

class GeoPointConverter implements JsonConverter<GeoPoint, GeoPoint> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(dynamic geoPoint) {
    return geoPoint;
  }

  @override
  GeoPoint toJson(GeoPoint geopoint) => geopoint;
}
