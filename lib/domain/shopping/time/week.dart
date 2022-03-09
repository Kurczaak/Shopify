import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/time/day.dart';

part 'week.freezed.dart';

@freezed
abstract class Week with _$Week {
  const Week._();
  const factory Week({
    required Day monday,
    required Day tuesday,
    required Day wednesday,
    required Day thursday,
    required Day friday,
    required Day saturday,
    required Day sunday,
  }) = _Week;

  factory Week.empty() => Week(
        monday: Day.empty(DayName.monday),
        tuesday: Day.empty(DayName.tuesday),
        wednesday: Day.empty(DayName.wednesday),
        thursday: Day.empty(DayName.thursday),
        friday: Day.empty(DayName.friday),
        saturday: Day.empty(DayName.saturday),
        sunday: Day.empty(DayName.sunday),
      );

  List<Day> get asList =>
      [monday, tuesday, wednesday, thursday, friday, saturday, sunday];

  Option<ValueFailure<dynamic>> get failureOption {
    return monday.failureOption.fold(
      () => tuesday.failureOption.fold(
        () => wednesday.failureOption.fold(
          () => thursday.failureOption.fold(
            () => friday.failureOption.fold(
              () => saturday.failureOption.fold(
                () => sunday.failureOption,
                (f) => some(f),
              ),
              (f) => some(f),
            ),
            (f) => some(f),
          ),
          (f) => some(f),
        ),
        (f) => some(f),
      ),
      (f) => some(f),
    );
  }
}
