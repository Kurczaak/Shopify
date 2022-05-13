import 'package:dartz/dartz.dart';
import 'package:shopify_domain/core/address.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/core/location/location_failure.dart';

abstract class ILocationFacade {
  Future<Either<LocationFailure, Location>> getCurrentLocation();
  Future<Either<LocationFailure, Location>> getUserLocation();
  Future<Either<LocationFailure, Location>> getLocationFromAddress(
      Address address);
  Future<Either<LocationFailure, Unit>> setUserAddress(Address address);
}
