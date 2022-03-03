import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/value_transformers.dart';

part 'location.freezed.dart';

const double emptyLatitude = 37.421764;
const double emptyLongitude = -122.084614;

@freezed
abstract class Location implements _$Location {
  const Location._();

  const factory Location({
    required double latitude,
    required double longitude,
    required String geohash,
  }) = _Location;

  factory Location.fromLatLang({
    required double latitude,
    required double longitude,
  }) {
    final hash = latLangToHash(latitude, longitude);
    return Location(latitude: latitude, longitude: longitude, geohash: hash);
  }

  factory Location.empty() =>
      Location.fromLatLang(latitude: emptyLatitude, longitude: emptyLongitude);
}
