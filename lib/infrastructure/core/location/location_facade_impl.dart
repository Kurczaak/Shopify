import 'package:injectable/injectable.dart';
import 'package:shopify_client/domain/core/address.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/core/location/i_location_facade.dart';
import 'package:shopify_client/domain/core/location/location.dart';
import 'package:shopify_client/domain/core/location/location_failure.dart';
import 'package:location/location.dart' as loc;

@LazySingleton(as: ILocationFacade)
class LocationFacadeImpl implements ILocationFacade {
  final loc.Location _locationService;

  LocationFacadeImpl(this._locationService);
  @override
  Future<Either<LocationFailure, Location>> getCurrentLocation() {
    // TODO: implement getCurrentLocation
    throw UnimplementedError();
  }

  @override
  Future<Either<LocationFailure, Location>> getUserLocation() {
    // TODO: implement getUserLocation
    throw UnimplementedError();
  }

  @override
  Future<Either<LocationFailure, Unit>> setUserAddress(Address address) {
    // TODO: implement setUserAddress
    throw UnimplementedError();
  }
}
