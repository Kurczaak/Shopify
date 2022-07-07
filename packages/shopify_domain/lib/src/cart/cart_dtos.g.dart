// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemDto _$$_CartItemDtoFromJson(Map<String, dynamic> json) =>
    _$_CartItemDto(
      pricedProduct: PricedProductDto.fromJson(
          json['pricedProduct'] as Map<String, dynamic>),
      pricedProductId: json['pricedProductId'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_CartItemDtoToJson(_$_CartItemDto instance) =>
    <String, dynamic>{
      'pricedProduct': instance.pricedProduct.toJson(),
      'pricedProductId': instance.pricedProductId,
      'quantity': instance.quantity,
    };

_$_CartDto _$$_CartDtoFromJson(Map<String, dynamic> json) => _$_CartDto(
      shop: ShopDto.fromJson(json['shop'] as Map<String, dynamic>),
      shopId: json['shopId'] as String,
    );

Map<String, dynamic> _$$_CartDtoToJson(_$_CartDto instance) =>
    <String, dynamic>{
      'shop': instance.shop.toJson(),
      'shopId': instance.shopId,
    };

_$_UserCartsDto _$$_UserCartsDtoFromJson(Map<String, dynamic> json) =>
    _$_UserCartsDto();

Map<String, dynamic> _$$_UserCartsDtoToJson(_$_UserCartsDto instance) =>
    <String, dynamic>{};
