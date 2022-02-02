import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ShoppingValueFailure<T> with _$ShoppingValueFailure<T> {
  const factory ShoppingValueFailure.exceedingLength(
      {required T failedValue, required int maxLength}) = ExceedingLength<T>;
  const factory ShoppingValueFailure.stringTooShort(
      {required T failedValue, required int minLength}) = StringTooShort<T>;
  const factory ShoppingValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory ShoppingValueFailure.multiline({required T failedValue}) =
      Multiline<T>;
  const factory ShoppingValueFailure.incorrectPostalCode(
      {required T failedValue}) = IncorrectPostalCode<T>;
  const factory ShoppingValueFailure.shopClosedAllWeekLong(
      {required T failedValue}) = ShopClosedAllWeekLong<T>;
  const factory ShoppingValueFailure.noPhotoSelected({required T failedValue}) =
      NoPhotoSelected<T>;
  const factory ShoppingValueFailure.nonPositiveValue(
      {required T failedValue}) = NonPositivePrice<T>;
  const factory ShoppingValueFailure.noAddressNumber({required T failedValue}) =
      NoAddressNumber<T>;
  const factory ShoppingValueFailure.incorrectHour(
      {required T failedValue,
      required bool twelveHourFormat}) = IncorrectHour<T>;
  const factory ShoppingValueFailure.numberOutsideInterval(
      {required T failedValue,
      required num min,
      required num max}) = NumberOutsideInterval<T>;
  const factory ShoppingValueFailure.invalidTimeInterval(
      {required T failedValue}) = InvalidTimeInterval<T>;
  const factory ShoppingValueFailure.listTooLong(
      {required T failedValue, required int maxLength}) = ListTooLong<T>;
  const factory ShoppingValueFailure.listTooShort(
      {required T failedValue, required int minLength}) = ListTooShort<T>;
  const factory ShoppingValueFailure.emptyList(
      {required T failedValue, required int minLength}) = EmptyList<T>;
}
