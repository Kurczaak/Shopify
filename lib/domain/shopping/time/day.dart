import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';

part 'day.freezed.dart';

enum DayName {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

@freezed
abstract class Day with _$Day {
  const Day._();

  const factory Day({
    required DayName day,
    required bool isOpen,
    required TimeInterval openingInterval,
  }) = _Day;

  factory Day.empty(DayName day) {
    return Day(
        day: day,
        isOpen: true,
        openingInterval: TimeInterval(Hour.fromInt(8, 0), Hour.fromInt(10, 0)));
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return openingInterval.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}

extension Stringify on DayName {
  String get name {
    switch (this) {
      case DayName.monday:
        return 'Monday';
      case DayName.tuesday:
        return 'Tuesday';
      case DayName.wednesday:
        return 'Wednesday';
      case DayName.thursday:
        return 'Thursday';
      case DayName.friday:
        return 'Friday';
      case DayName.saturday:
        return 'Saturday';
      case DayName.sunday:
        return 'Sunday';
      default:
        return 'Monday';
    }
  }
}

DayName dayFromString(String nameStr) {
  switch (nameStr) {
    case 'Monday':
      return DayName.monday;
    case 'Tuesday':
      return DayName.tuesday;
    case 'Wednesday':
      return DayName.wednesday;
    case 'Thursday':
      return DayName.thursday;
    case 'Friday':
      return DayName.friday;
    case 'Saturday':
      return DayName.saturday;
    case 'Sunday':
      return DayName.sunday;
    default:
      return DayName.monday;
  }
}
