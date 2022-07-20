import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:shopify_client/domain/favourites/favourites_facade.dart';
import 'package:shopify_domain/favourites/favourite_product.dart';
import 'package:shopify_domain/favourites/favourite_failure.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/favourites/shopify_favourites_facade.dart';

@Injectable(as: IFavouritesFacade)
class ShopifyFavouritesFacadeImpl implements IFavouritesFacade {
  final IShopifyFavouritesFacade favouritesFacade;
  ShopifyFavouritesFacadeImpl(this.favouritesFacade);
  @override
  Future<Either<FavouriteFailure, Unit>> addToFavourites(UniqueId productId) {
    return favouritesFacade.addToFavourites(productId);
  }

  @override
  Future<Either<FavouriteFailure, Unit>> removeFromFavourites(
      UniqueId productId) {
    return favouritesFacade.removeFromFavourites(productId);
  }

  @override
  Stream<Either<FavouriteFailure, KtList<FavouriteProduct>>> watchFavourites() {
    return favouritesFacade.watchFavourites();
  }

  @override
  Future<Either<FavouriteFailure, bool>> isFavourite(UniqueId productId) {
    return favouritesFacade.isFavourite(productId);
  }
}
