// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationDto _$$_LocationDtoFromJson(Map<String, dynamic> json) =>
    _$_LocationDto(
      geopoint:
          const GeoPointConverter().fromJson(json['geopoint'] as GeoPoint),
      geohash: json['geohash'] as String,
    );

Map<String, dynamic> _$$_LocationDtoToJson(_$_LocationDto instance) =>
    <String, dynamic>{
      'geopoint': const GeoPointConverter().toJson(instance.geopoint),
      'geohash': instance.geohash,
    };
