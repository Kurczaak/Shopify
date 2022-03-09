import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/shopping/time/day.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';

part 'day_presentation_classes.freezed.dart';

@freezed
abstract class DayPrimitive implements _$DayPrimitive {
  const DayPrimitive._();

  const factory DayPrimitive({
    required String day,
    required bool isOpen,
    required TimeIntervalPrimitive timeInterval,
  }) = _DayPrimitive;

  factory DayPrimitive.empty(String day) => DayPrimitive(
        day: day,
        isOpen: true,
        timeInterval: TimeIntervalPrimitive.initial(),
      );

  factory DayPrimitive.monday() => DayPrimitive.empty('Monday');
  factory DayPrimitive.tuesday() => DayPrimitive.empty('Tuesday');
  factory DayPrimitive.wednesday() => DayPrimitive.empty('Wednesday');
  factory DayPrimitive.thursday() => DayPrimitive.empty('Thursday');
  factory DayPrimitive.friday() => DayPrimitive.empty('Friday');
  factory DayPrimitive.saturday() => DayPrimitive.empty('Saturday');
  factory DayPrimitive.sunday() => DayPrimitive.empty('Sunday');

  factory DayPrimitive.fromDomain(Day day) {
    return DayPrimitive(
        day: day.day.name,
        isOpen: day.isOpen,
        timeInterval: TimeIntervalPrimitive.fromDomain(day.openingInterval));
  }

  Day toDomain() {
    return Day(
        day: dayFromString(day),
        isOpen: isOpen,
        openingInterval: timeInterval.toDomain());
  }
}

@freezed
abstract class TimeIntervalPrimitive implements _$TimeIntervalPrimitive {
  const TimeIntervalPrimitive._();

  const factory TimeIntervalPrimitive({
    required int openingHour,
    required int openingMinutes,
    required int closingHour,
    required int closingMinutes,
  }) = _TimeIntervalPrimitive;

  factory TimeIntervalPrimitive.initial() => TimeIntervalPrimitive.fullHours(
        openingHour: 8,
        closingHour: 22,
      );

  factory TimeIntervalPrimitive.fullHours({
    required int openingHour,
    required int closingHour,
  }) =>
      TimeIntervalPrimitive(
        openingHour: openingHour,
        openingMinutes: 0,
        closingHour: closingHour,
        closingMinutes: 0,
      );
  factory TimeIntervalPrimitive.fromDomain(TimeInterval timeInterval) {
    return TimeIntervalPrimitive(
      openingHour: timeInterval.getOrCrash()[0].getOrCrash().hours,
      openingMinutes: timeInterval.getOrCrash()[0].getOrCrash().minutes,
      closingHour: timeInterval.getOrCrash()[1].getOrCrash().hours,
      closingMinutes: timeInterval.getOrCrash()[1].getOrCrash().minutes,
    );
  }

  factory TimeIntervalPrimitive.fromString(String opening, String closing) {
    final openingList = opening.split(':');
    final closingList = closing.split(':');
    final openingHourInt = int.parse(openingList.first);
    final openingMinutesInt = int.parse(openingList.last);
    final closingHourInt = int.parse(closingList.first);
    final closingMinutesInt = int.parse(closingList.last);

    return TimeIntervalPrimitive(
        openingHour: openingHourInt,
        openingMinutes: openingMinutesInt,
        closingHour: closingHourInt,
        closingMinutes: closingMinutesInt);
  }

  String get openingToString =>
      '${openingHour.stringifyHour}:${openingMinutes.stringifyHour}';
  String get closingToString =>
      '${closingHour.stringifyHour}:${closingMinutes.stringifyHour}';

  TimeInterval toDomain() {
    return TimeInterval(Hour.fromInt(openingHour, openingMinutes),
        Hour.fromInt(closingHour, closingMinutes));
  }
}

extension StringifyHour on int {
  String get stringifyHour {
    return this < 10 ? '0$this' : toString();
  }
}
