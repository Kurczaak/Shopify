import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ShopValueFailure<T> with _$ShopValueFailure<T> {
  const factory ShopValueFailure.shopClosedAllWeekLong(
      {required T failedValue}) = ShopClosedAllWeekLong<T>;
  const factory ShopValueFailure.incorrectHour(
      {required T failedValue,
      required bool twelveHourFormat}) = IncorrectHour<T>;
  const factory ShopValueFailure.invalidTimeInterval({required T failedValue}) =
      InvalidTimeInterval<T>;
}
