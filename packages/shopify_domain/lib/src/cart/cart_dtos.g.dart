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
      cartItems: (json['cartItems'] as List<dynamic>)
          .map((e) => CartItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CartDtoToJson(_$_CartDto instance) =>
    <String, dynamic>{
      'shop': instance.shop.toJson(),
      'cartItems': instance.cartItems.map((e) => e.toJson()).toList(),
    };

_$_UserCartsDto _$$_UserCartsDtoFromJson(Map<String, dynamic> json) =>
    _$_UserCartsDto(
      carts: (json['carts'] as List<dynamic>)
          .map((e) => CartDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserCartsDtoToJson(_$_UserCartsDto instance) =>
    <String, dynamic>{
      'carts': instance.carts.map((e) => e.toJson()).toList(),
    };
