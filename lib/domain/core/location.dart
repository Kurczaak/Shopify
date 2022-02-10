import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/value_transformers.dart';

part 'location.freezed.dart';

@freezed
abstract class Location with _$Location {
  const factory Location({
    required double latitude,
    required double longitude,
    required String geoHash,
  }) = _Location;

  factory Location.fromLatLang({
    required double latitude,
    required double longitude,
  }) {
    final hash = latLangToHash(latitude, longitude);
    return Location(latitude: latitude, longitude: longitude, geoHash: hash);
  }
}
