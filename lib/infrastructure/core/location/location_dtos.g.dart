// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationDto _$$_LocationDtoFromJson(Map<String, dynamic> json) =>
    _$_LocationDto(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      geoHash: json['geoHash'] as String,
    );

Map<String, dynamic> _$$_LocationDtoToJson(_$_LocationDto instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'geoHash': instance.geoHash,
    };
