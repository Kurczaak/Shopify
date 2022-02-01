import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'working_hour.dart';

part 'day.freezed.dart';

enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

@freezed
abstract class WorkingDay with _$WorkingDay {
  const WorkingDay._();

  const factory WorkingDay(
    Day day, {
    required WorkingHour openingHour,
    required WorkingHour closingHour,
    required bool isOpen,
  }) = _WorkingDay;

  Option<ValueFailure<dynamic>> get failureOption {
    return openingHour.failureOption
        .fold(() => closingHour.failureOption, (f) => some(f));
  }
}
