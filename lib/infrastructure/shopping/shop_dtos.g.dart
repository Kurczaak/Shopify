// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopItemDto _$$_ShopItemDtoFromJson(Map<String, dynamic> json) =>
    _$_ShopItemDto(
      id: json['id'] as String,
      shopName: json['shopName'] as String,
      streetName: json['streetName'] as String,
      streetNumber: json['streetNumber'] as int,
      postalCode: json['postalCode'] as String,
      city: json['city'] as String,
    );

Map<String, dynamic> _$$_ShopItemDtoToJson(_$_ShopItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shopName': instance.shopName,
      'streetName': instance.streetName,
      'streetNumber': instance.streetNumber,
      'postalCode': instance.postalCode,
      'city': instance.city,
    };
