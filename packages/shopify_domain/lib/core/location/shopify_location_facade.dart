import 'package:dartz/dartz.dart';
import 'package:shopify_domain/core/address.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/core/location/location_failure.dart';
import 'package:shopify_domain/src/injection.dart';

abstract class ShopifyLocationFacade {
  Future<Either<LocationFailure, Location>> getCurrentLocation();
  Future<Either<LocationFailure, Location>> getUserLocation();
  Future<Either<LocationFailure, Location>> getLocationFromAddress(
      Address address);
  Future<Either<LocationFailure, Unit>> setUserAddress(Address address);
  static ShopifyLocationFacade get instance => getIt<ShopifyLocationFacade>();
}
