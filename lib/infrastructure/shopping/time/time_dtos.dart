import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';
import 'package:shopify_manager/domain/shopping/time/week.dart';
import 'package:shopify_manager/domain/shopping/time/day.dart';
import 'package:shopify_manager/domain/shopping/time/primitive_hour.dart';

part 'time_dtos.freezed.dart';

@freezed
abstract class WeekDto with _$WeekDto {
  const WeekDto._();
  const factory WeekDto({
    required DayDto monday,
    required DayDto tuesday,
    required DayDto wednesday,
    required DayDto thursday,
    required DayDto friday,
    required DayDto saturday,
    required DayDto sunday,
  }) = _WeekDto;

  factory WeekDto.fromDomain(Week week) {
    return WeekDto(
      monday: DayDto.fromDomain(week.monday),
      tuesday: DayDto.fromDomain(week.tuesday),
      wednesday: DayDto.fromDomain(week.monday),
      thursday: DayDto.fromDomain(week.thursday),
      friday: DayDto.fromDomain(week.friday),
      saturday: DayDto.fromDomain(week.saturday),
      sunday: DayDto.fromDomain(week.sunday),
    );
  }

  Week toDomain() {
    return Week(
        monday: monday.toDomain(),
        tuesday: tuesday.toDomain(),
        wednesday: wednesday.toDomain(),
        thursday: thursday.toDomain(),
        friday: friday.toDomain(),
        saturday: saturday.toDomain(),
        sunday: sunday.toDomain());
  }
}

@freezed
abstract class DayDto with _$DayDto {
  const DayDto._();
  const factory DayDto({
    required String day,
    required bool isOpen,
    required TimeIntervalDto timeInterval,
  }) = _DayDto;

  factory DayDto.fromDomain(Day day) {
    return DayDto(
      day: day.day.name,
      isOpen: day.isOpen,
      timeInterval: TimeIntervalDto.fromDomain(day.openingInterval),
    );
  }

  Day toDomain() {
    return Day(
      day: dayFromString(day),
      isOpen: isOpen,
      openingInterval: timeInterval.toDomain(),
    );
  }
}

@freezed
abstract class TimeIntervalDto with _$TimeIntervalDto {
  const TimeIntervalDto._();
  const factory TimeIntervalDto({
    required int openingHour,
    required int openingMinutes,
    required int closingHour,
    required int closingMinutes,
  }) = _TimeIntervalDto;

  factory TimeIntervalDto.fromDomain(TimeInterval timeInterval) {
    final opening = timeInterval.getOrCrash().get(0).getOrCrash();
    final closing = timeInterval.getOrCrash().get(1).getOrCrash();
    return TimeIntervalDto(
      openingHour: opening.hours,
      openingMinutes: opening.minutes,
      closingHour: closing.hours,
      closingMinutes: closing.minutes,
    );
  }

  TimeInterval toDomain() {
    return TimeInterval(
        Hour(PrimitiveHour(hours: openingHour, minutes: openingMinutes)),
        (Hour(PrimitiveHour(hours: closingHour, minutes: closingMinutes))));
  }
}
