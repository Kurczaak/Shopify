import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

@module
abstract class LocationInjectableModule {
  @LazySingleton()
  Location get geocodingPlatform => Location.instance;
}
