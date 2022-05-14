import 'package:dartz/dartz.dart';
import 'package:shopify_domain/core.dart';

abstract class ILocationFacade {
  Future<Either<LocationFailure, Location>> getCurrentLocation();
  Future<Either<LocationFailure, Location>> getUserLocation();
  Future<Either<LocationFailure, Unit>> setUserAddress(Address address);
}
