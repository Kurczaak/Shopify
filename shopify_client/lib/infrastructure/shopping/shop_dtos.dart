import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_domain/shop.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopify_client/infrastructure/core/address_dto.dart';
import 'package:shopify_client/infrastructure/core/location/location_dtos.dart';
import 'package:shopify_client/infrastructure/shopping/time/time_dtos.dart';

part 'shop_dtos.freezed.dart';
part 'shop_dtos.g.dart';

@freezed
abstract class ShopDto implements _$ShopDto {
  const ShopDto._();

  const factory ShopDto({
    @Default('') @JsonKey(ignore: true) String id,
    required String shopName,
    required AddressDto address,
    required WeekDto week,
    required LocationDto position,
    required String logoUrl,
    //@ServerTimestampConverter() required FieldValue serverTimeStamp,
  }) = _ShopItemDto;

  factory ShopDto.fromDomain(Shop shop) {
    return ShopDto(
      id: shop.id.getOrCrash(),
      shopName: shop.shopName.getOrCrash(),
      address: AddressDto.fromDomain(shop.address),
      //serverTimeStamp: FieldValue.serverTimestamp(),
      position: LocationDto.fromDomain(shop.location),
      week: WeekDto.fromDomain(shop.workingWeek),
      logoUrl: shop.logoUrl.getOrCrash(),
    );
  }

  Shop toDomain() {
    return Shop(
      id: UniqueId.fromUniqueString(id),
      shopName: ShopName(shopName),
      address: Address(
        apartmentNumber: AddressNumber(address.apartmentNumber),
        streetNumber: StreetNumber(address.streetNumber),
        city: CityName(address.city),
        postalCode: PostalCode(address.postalCode),
        streetName: StreetName(address.streetName),
      ),
      location: position.toDomain(),
      logoUrl: ShopifyUrl(logoUrl),
      workingWeek: week.toDomain(),
    );
  }

  factory ShopDto.fromJson(Map<String, dynamic> json) =>
      _$ShopDtoFromJson(json);

  factory ShopDto.fromFirestore(DocumentSnapshot doc) {
    return ShopDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
