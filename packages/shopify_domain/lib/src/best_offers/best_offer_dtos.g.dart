// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_offer_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BestOfferDto _$$_BestOfferDtoFromJson(Map<String, dynamic> json) =>
    _$_BestOfferDto(
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      logoUrl: json['logoUrl'] as String,
      position: LocationDto.fromJson(json['position'] as Map<String, dynamic>),
      shopName: json['shopName'] as String,
      price: PriceDto.fromJson(json['price'] as Map<String, dynamic>),
      week: WeekDto.fromJson(json['week'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BestOfferDtoToJson(_$_BestOfferDto instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'logoUrl': instance.logoUrl,
      'position': instance.position.toJson(),
      'shopName': instance.shopName,
      'price': instance.price.toJson(),
      'week': instance.week.toJson(),
    };
