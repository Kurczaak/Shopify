import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/shop/time/day.dart';
import 'package:shopify_domain/shop/value_validators.dart';

part 'week.freezed.dart';

@freezed
class Week with _$Week {
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

  Either<ValueFailure, Unit> get failureOrUnit {
    return monday.failureOrUnit.andThen(
      tuesday.failureOrUnit.andThen(
        wednesday.failureOrUnit.andThen(
          thursday.failureOrUnit.andThen(
            friday.failureOrUnit.andThen(
              saturday.failureOrUnit.andThen(sunday.failureOrUnit),
            ),
          ),
        ),
      ),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return validateShopOpen(this).fold(
        (f) => some(f),
        (r) => monday.failureOption.fold(
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
            ));
  }
}
