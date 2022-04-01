import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ShopValueFailure<T> with _$ShopValueFailure<T> {
  const factory ShopValueFailure.exceedingLength(
      {required T failedValue, required int maxLength}) = ExceedingLength<T>;
  const factory ShopValueFailure.stringTooShort(
      {required T failedValue, required int minLength}) = StringTooShort<T>;
  const factory ShopValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory ShopValueFailure.multiline({required T failedValue}) =
      Multiline<T>;
  const factory ShopValueFailure.incorrectPostalCode({required T failedValue}) =
      IncorrectPostalCode<T>;
  const factory ShopValueFailure.shopClosedAllWeekLong(
      {required T failedValue}) = ShopClosedAllWeekLong<T>;
  const factory ShopValueFailure.noPhotoSelected({required T failedValue}) =
      NoPhotoSelected<T>;
  const factory ShopValueFailure.nonPositiveValue({required T failedValue}) =
      NonPositivePrice<T>;
  const factory ShopValueFailure.noAddressNumber({required T failedValue}) =
      NoAddressNumber<T>;
  const factory ShopValueFailure.incorrectHour(
      {required T failedValue,
      required bool twelveHourFormat}) = IncorrectHour<T>;
  const factory ShopValueFailure.numberOutsideInterval(
      {required T failedValue,
      required num min,
      required num max}) = NumberOutsideInterval<T>;
  const factory ShopValueFailure.invalidTimeInterval({required T failedValue}) =
      InvalidTimeInterval<T>;
  const factory ShopValueFailure.listTooLong(
      {required T failedValue, required int maxLength}) = ListTooLong<T>;
  const factory ShopValueFailure.listTooShort(
      {required T failedValue, required int minLength}) = ListTooShort<T>;
  const factory ShopValueFailure.emptyList(
      {required T failedValue, required int minLength}) = EmptyList<T>;
  const factory ShopValueFailure.imageTooBig(
      {required T failedValue,
      required int maxHeight,
      required int maxWidth}) = ImageTooBig<T>;

  const factory ShopValueFailure.imageTooSmall(
      {required T failedValue,
      required int minHeight,
      required int minWidth}) = ImageTooSmall<T>;
}
