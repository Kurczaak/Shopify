import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/best_offers/i_best_offers_facade.dart';
import 'package:shopify_domain/best_offers/shopify_best_offers_facade.dart';
import 'package:shopify_domain/product/value_objects.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/best_offers/best_offer_failure.dart';
import 'package:shopify_domain/best_offers/best_offer.dart';

@Injectable(as: IBestOffersFacade)
class ShopifyBestOffersFacadeImpl implements IBestOffersFacade {
  final ShopifyBestOffersFacade bestOffersFacade;

  ShopifyBestOffersFacadeImpl(this.bestOffersFacade);
  @override
  Future<Either<BestOfferFailure, KtList<ProductBestOffers>>>
      bestProductsByCategoryWithinDistance(
          {required Category category,
          required Location location,
          required NonnegativeNumber distance,
          required NonnegativeInt page}) {
    throw UnimplementedError();
    // return bestOffersFacade.bestProductsByCategoryWithinDistance(
    //     category: category, location: location, distance: distance, page: page);
  }

  @override
  Stream<Either<BestOfferFailure, KtList<BestOffer>>> bestWithinDistance(
      {required UniqueId productId,
      required Location location,
      required NonnegativeNumber distance}) {
    return bestOffersFacade.bestWithinDistance(
        productId: productId, location: location, distance: distance);
  }
}
