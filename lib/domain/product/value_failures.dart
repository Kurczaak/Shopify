import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failures.freezed.dart';

@freezed
class ProductValueFailure<T> with _$ProductValueFailure<T> {
  // const factory ProductValueFailure.exceedingLength(
  //     {required T failedValue, required int maxLength}) = ExceedingLength<T>;
  // const factory ProductValueFailure.stringTooShort(
  //     {required T failedValue, required int minLength}) = StringTooShort<T>;
  // const factory ProductValueFailure.empty({required T failedValue}) = Empty<T>;
  // const factory ProductValueFailure.multiline({required T failedValue}) =
  //     Multiline<T>;

  const factory ProductValueFailure.incorrectCategoryString(
      {required String failedValue}) = IncorrectCategoryString<T>;

  const factory ProductValueFailure.incorrectWeightUnitString(
      {required String failedValue}) = IncorrectWeightUnitString<T>;

  const factory ProductValueFailure.incorrectCurrencyString(
      {required String failedValue}) = IncorrectCurrencyString<T>;

  // const factory ProductValueFailure.noPhotoSelected({required T failedValue}) =
  //     NoPhotoSelected<T>;
  // const factory ProductValueFailure.nonPositiveValue({required T failedValue}) =
  //     NonPositivePrice<T>;

  // const factory ProductValueFailure.numberOutsideInterval(
  //     {required T failedValue,
  //     required num min,
  //     required num max}) = NumberOutsideInterval<T>;

  // const factory ProductValueFailure.listTooLong(
  //     {required T failedValue, required int maxLength}) = ListTooLong<T>;
  // const factory ProductValueFailure.listTooShort(
  //     {required T failedValue, required int minLength}) = ListTooShort<T>;
  // const factory ProductValueFailure.emptyList(
  //     {required T failedValue, required int minLength}) = EmptyList<T>;
}
