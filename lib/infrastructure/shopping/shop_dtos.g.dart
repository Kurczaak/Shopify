// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopItemDto _$$_ShopItemDtoFromJson(Map<String, dynamic> json) =>
    _$_ShopItemDto(
      shopName: json['shopName'] as String,
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      week: WeekDto.fromJson(json['week'] as Map<String, dynamic>),
      location: LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      logoUrl: json['logoUrl'] as String,
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_ShopItemDtoToJson(_$_ShopItemDto instance) =>
    <String, dynamic>{
      'shopName': instance.shopName,
      'address': instance.address,
      'week': instance.week,
      'location': instance.location,
      'logoUrl': instance.logoUrl,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
