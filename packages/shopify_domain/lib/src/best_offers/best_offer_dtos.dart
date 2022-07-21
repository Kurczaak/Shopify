import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:shopify_domain/best_offers/best_offer.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_domain/src/core/address_dto.dart';
import 'package:shopify_domain/src/core/location/location_dtos.dart';
import 'package:shopify_domain/src/shop/time/time_dtos.dart';
part 'best_offer_dtos.freezed.dart';
part 'best_offer_dtos.g.dart';

@freezed
class BestOfferDto with _$BestOfferDto {
  const BestOfferDto._();
  const factory BestOfferDto({
    @Default('') @JsonKey(ignore: true) String shopId,
    required AddressDto address,
    required String logoUrl,
    required LocationDto position,
    required String shopName,
    required PriceDto price,
    required WeekDto week,
    required double distance,
  }) = _BestOfferDto;

  BestOffer toDomain() => BestOffer(
      shop: Shop(
          address: address.toDomain(),
          id: UniqueId.fromUniqueString(shopId),
          location: position.toDomain(),
          logoUrl: ShopifyUrl(logoUrl),
          shopName: ShopName(shopName),
          workingWeek: week.toDomain()),
      price: price.toDomain(),
      distance: NonnegativeNumber(distance));

  factory BestOfferDto.fromJson(Map<String, dynamic> json) =>
      _$BestOfferDtoFromJson(json);

  factory BestOfferDto.fromFirestore(DistanceDocSnapshot doc) =>
      BestOfferDto.fromJson(doc.documentSnapshot.data() as Map<String, dynamic>)
          .copyWith(distance: doc.kmDistance, shopId: doc.documentSnapshot.id);
}
