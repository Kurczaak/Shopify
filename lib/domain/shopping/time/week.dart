import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/time/day.dart';

part 'week.freezed.dart';

@freezed
abstract class Week with _$Week {
  const Week._();
  const factory Week(
    Day monday,
    Day tuesday,
    Day wednesday,
    Day thursday,
    Day friday,
    Day saturday,
    Day sunday,
  ) = _Week;

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
