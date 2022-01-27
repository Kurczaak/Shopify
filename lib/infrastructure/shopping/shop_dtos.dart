import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/shop.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'shop_dtos.freezed.dart';
part 'shop_dtos.g.dart';

@freezed
abstract class ShopDto implements _$ShopDto {
  const ShopDto._();

  const factory ShopDto({
    @Default('') @JsonKey(ignore: true) String id,
    required String shopName,
    required String streetName,
    required int streetNumber,
    required String postalCode,
    required String city,
    @ServerTimestampConverter() required FieldValue serverTimeStamp,
  }) = _ShopItemDto;

  factory ShopDto.fromDomain(Shop shop) {
    return ShopDto(
      id: shop.id.getOrCrash(),
      city: shop.city.getOrCrash(),
      postalCode: shop.postalCode.getOrCrash(),
      shopName: shop.shopName.getOrCrash(),
      streetName: shop.streetName.getOrCrash(),
      //TODO CHANGE THAT!
      streetNumber: 21,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Shop toDomain() {
    return Shop(
      id: UniqueId.fromUniqueString(id),
      shopName: ShopName(shopName),
      streetName: StreetName(streetName),
      postalCode: PostalCode(postalCode),
      city: CityName(city),
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
