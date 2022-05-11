import 'package:injectable/injectable.dart';
import 'package:geocoding/geocoding.dart';

@module
abstract class GeocodingInjectableModule {
  @LazySingleton()
  GeocodingPlatform get geocodingPlatform => GeocodingPlatform.instance;
}
