// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeekDto _$$_WeekDtoFromJson(Map<String, dynamic> json) => _$_WeekDto(
      monday: DayDto.fromJson(json['monday'] as Map<String, dynamic>),
      tuesday: DayDto.fromJson(json['tuesday'] as Map<String, dynamic>),
      wednesday: DayDto.fromJson(json['wednesday'] as Map<String, dynamic>),
      thursday: DayDto.fromJson(json['thursday'] as Map<String, dynamic>),
      friday: DayDto.fromJson(json['friday'] as Map<String, dynamic>),
      saturday: DayDto.fromJson(json['saturday'] as Map<String, dynamic>),
      sunday: DayDto.fromJson(json['sunday'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeekDtoToJson(_$_WeekDto instance) =>
    <String, dynamic>{
      'monday': instance.monday.toJson(),
      'tuesday': instance.tuesday.toJson(),
      'wednesday': instance.wednesday.toJson(),
      'thursday': instance.thursday.toJson(),
      'friday': instance.friday.toJson(),
      'saturday': instance.saturday.toJson(),
      'sunday': instance.sunday.toJson(),
    };

_$_DayDto _$$_DayDtoFromJson(Map<String, dynamic> json) => _$_DayDto(
      day: json['day'] as String,
      isOpen: json['isOpen'] as bool,
      timeInterval: TimeIntervalDto.fromJson(
          json['timeInterval'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DayDtoToJson(_$_DayDto instance) => <String, dynamic>{
      'day': instance.day,
      'isOpen': instance.isOpen,
      'timeInterval': instance.timeInterval.toJson(),
    };

_$_TimeIntervalDto _$$_TimeIntervalDtoFromJson(Map<String, dynamic> json) =>
    _$_TimeIntervalDto(
      openingHour: json['openingHour'] as int,
      openingMinutes: json['openingMinutes'] as int,
      closingHour: json['closingHour'] as int,
      closingMinutes: json['closingMinutes'] as int,
    );

Map<String, dynamic> _$$_TimeIntervalDtoToJson(_$_TimeIntervalDto instance) =>
    <String, dynamic>{
      'openingHour': instance.openingHour,
      'openingMinutes': instance.openingMinutes,
      'closingHour': instance.closingHour,
      'closingMinutes': instance.closingMinutes,
    };
