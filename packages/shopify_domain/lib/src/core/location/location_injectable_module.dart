import 'package:injectable/injectable.dart';
import 'package:location/location.dart' as loc;

@module
abstract class LocationInjectableModule {
  @LazySingleton()
  loc.Location get location => loc.Location.instance;
}
