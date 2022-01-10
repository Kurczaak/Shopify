import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/shop.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';

part 'shop_dtos.freezed.dart';
part 'shop_dtos.g.dart';

@freezed
abstract class ShopDto implements _$ShopDto {
  const ShopDto._();

  const factory ShopDto({
    required String id,
    required String shopName,
    required String streetName,
    required int streetNumber,
    required String postalCode,
    required String city,
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
    );
  }

  Shop toDomain() {
    return Shop(
      id: UniqueId.fromUniqueString(id),
      shopName: Name(shopName),
      streetName: Name(streetName),
      postalCode: PostalCode(postalCode),
      city: Name(city),
    );
  }

  factory ShopDto.fromJson(Map<String, dynamic> json) =>
      _$ShopDtoFromJson(json);
}
