import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/location.dart';

part 'location_dtos.freezed.dart';
part 'location_dtos.g.dart';

@freezed
class LocationDto with _$LocationDto {
  const LocationDto._();
  const factory LocationDto({
    required double latitude,
    required double longitude,
    required String geoHash,
  }) = _LocationDto;

  factory LocationDto.fromDomain(Location location) {
    return LocationDto(
        latitude: location.latitude,
        longitude: location.longitude,
        geoHash: location.geoHash);
  }

  Location toDomain() {
    return Location(geoHash: geoHash, latitude: latitude, longitude: longitude);
  }

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);
}
