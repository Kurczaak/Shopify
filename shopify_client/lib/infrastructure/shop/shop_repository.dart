import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/shop/i_shop_repository.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/shop/shop_failure.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_domain/shop/shopify_shop_repository.dart';

@LazySingleton(as: IShopRepository)
class ShopRepositoryImpl implements IShopRepository {
  final ShopifyShopRepository shopRepository;

  ShopRepositoryImpl(this.shopRepository);
  @override
  Future<Either<ShopFailure, Unit>> create(
      Shop shop, ShopLogo logo, ShopifyUser user) {
    return shopRepository.create(shop, logo, user);
  }

  @override
  Future<Either<ShopFailure, Unit>> delete(Shop shop) {
    return shopRepository.delete(shop);
  }

  @override
  Future<Either<ShopFailure, Unit>> update(Shop shop) {
    return shopRepository.update(shop);
  }

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchAll() {
    return shopRepository.watchAll();
  }

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchNearby(
      Location location, NonnegativeNumber radius) {
    return shopRepository.watchNearby(location, radius);
  }
}
