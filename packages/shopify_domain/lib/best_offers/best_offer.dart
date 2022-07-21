import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_offer.freezed.dart';

@freezed
class BestOffer with _$BestOffer {
  const factory BestOffer({
    required Shop shop,
    required Price price,
    required NonnegativeNumber distance,
  }) = _BestOffer;
}

@freezed
class ProductBestOffers with _$ProductBestOffers {
  const factory ProductBestOffers(
      {required Product product,
      required KtList<BestOffer> bestOffers}) = _ProductBestOffers;
}
