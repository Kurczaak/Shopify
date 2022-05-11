// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressDto _$$_AddressDtoFromJson(Map<String, dynamic> json) =>
    _$_AddressDto(
      streetName: json['streetName'] as String,
      postalCode: json['postalCode'] as String,
      city: json['city'] as String,
      streetNumber: json['streetNumber'] as String,
      apartmentNumber: json['apartmentNumber'] as String,
    );

Map<String, dynamic> _$$_AddressDtoToJson(_$_AddressDto instance) =>
    <String, dynamic>{
      'streetName': instance.streetName,
      'postalCode': instance.postalCode,
      'city': instance.city,
      'streetNumber': instance.streetNumber,
      'apartmentNumber': instance.apartmentNumber,
    };
