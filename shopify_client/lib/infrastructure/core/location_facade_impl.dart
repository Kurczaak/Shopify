import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/domain/core/i_location_facade.dart';
import 'package:shopify_domain/core/location/location_failure.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/core/address.dart';
import 'package:shopify_domain/core/location/shopify_location_facade.dart';

@LazySingleton(as: ILocationFacade)
class LocationFacadeImpl implements ILocationFacade {
  final ShopifyLocationFacade shopifyLocation;

  LocationFacadeImpl(this.shopifyLocation);
  @override
  Future<Either<LocationFailure, Location>> getCurrentLocation() {
    return shopifyLocation.getCurrentLocation();
  }

  @override
  Future<Either<LocationFailure, Location>> getUserLocation() {
    return shopifyLocation.getUserLocation();
  }

  @override
  Future<Either<LocationFailure, Unit>> setUserAddress(Address address) {
    return shopifyLocation.setUserAddress(address);
  }
}
