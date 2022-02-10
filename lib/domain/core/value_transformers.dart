import 'package:dart_geohash/dart_geohash.dart';

String latLangToHash(double latitude, double longitude) =>
    GeoHasher().encode(latitude, longitude, precision: 9);
