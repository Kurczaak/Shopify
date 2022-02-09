import 'package:freezed_annotation/freezed_annotation.dart';

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
}

@freezed
abstract class TimeIntervalPrimitive implements _$TimeIntervalPrimitive {
  const factory TimeIntervalPrimitive({
    required int openingHour,
    required int openingMinutes,
    required int closingHour,
    required int closingMinutes,
  }) = _TimeIntervalPrimitive;

  factory TimeIntervalPrimitive.initial() => TimeIntervalPrimitive.fullHours(
        openingHour: 6,
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
}
