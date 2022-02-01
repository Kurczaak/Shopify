import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'value_objects.dart';
import 'failures.dart';

part 'working_hour.freezed.dart';

@freezed
abstract class WorkingHour with _$WorkingHour {
  const WorkingHour._();

  const factory WorkingHour({
    required Hour hour,
    required Minute minutes,
    required bool twelveHourFormat,
    required bool am,
  }) = _WorkingHour;

  factory WorkingHour.am({
    required Hour hour,
    required Minute minutes,
  }) =>
      WorkingHour(
          hour: hour, minutes: minutes, twelveHourFormat: true, am: true);

  factory WorkingHour.pm({
    required Hour hour,
    required Minute minutes,
  }) =>
      WorkingHour(
          hour: hour, minutes: minutes, twelveHourFormat: true, am: false);
  factory WorkingHour.twentyFourHourFormat({
    required Hour hour,
    required Minute minutes,
  }) =>
      WorkingHour(
          hour: hour, minutes: minutes, twelveHourFormat: false, am: true);

  Option<ValueFailure<dynamic>> get failureOption {
    return hour.failureOrUnit
        .andThen(minutes.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
