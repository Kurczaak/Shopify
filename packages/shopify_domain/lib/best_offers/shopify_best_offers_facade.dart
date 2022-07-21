import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/best_offers/best_offer.dart';
import 'package:shopify_domain/best_offers/best_offer_failure.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/value_objects.dart';

abstract class ShopifyBestOffersFacade {
  Stream<Either<BestOfferFailure, KtList<BestOffer>>> bestWithinDistance({
    required UniqueId productId,
    required Location location,
    required NonnegativeNumber distance,
  });

  Future<Either<BestOfferFailure, KtList<ProductBestOffers>>>
      bestProductsByCategoryWithinDistance({
    required Category category,
    required Location location,
    required NonnegativeNumber distance,
    required NonnegativeInt page,
  });
}
