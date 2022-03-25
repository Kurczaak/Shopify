import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/domain/core/address.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/core/errors.dart';
import 'package:shopify_client/domain/core/location/i_location_facade.dart';
import 'package:shopify_client/domain/core/location/location.dart';
import 'package:shopify_client/domain/core/location/location_failure.dart';
import 'package:location/location.dart' as loc;
import 'location_data_mapper.dart';

@LazySingleton(as: ILocationFacade)
class LocationFacadeImpl implements ILocationFacade {
  final loc.Location _locationService;

  LocationFacadeImpl(this._locationService);
  @override
  Future<Either<LocationFailure, Location>> getCurrentLocation() async {
    final permissionStatus = await _locationService.hasPermission();
    if (permissionStatus == loc.PermissionStatus.denied ||
        permissionStatus == loc.PermissionStatus.deniedForever) {
      return left(const LocationFailure.permissionDenied());
    }
    try {
      final locationData = await _locationService.getLocation();
      final location = locationData.toDomain();
      return (right(location));
    } on UnexpectedValueError catch (_) {
      return left(const LocationFailure.unexpected());
    } on PlatformException catch (_) {
      return left(const LocationFailure.unexpected());
    }
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
