import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class CoreValueFailure<T> with _$CoreValueFailure<T> {
  const factory CoreValueFailure.listTooLong(
      {required T failedValue, required int maxLength}) = ListTooLong<T>;
  const factory CoreValueFailure.listTooShort(
      {required T failedValue, required int minLength}) = ListTooShort<T>;
  const factory CoreValueFailure.exceedingLength(
      {required T failedValue, required int maxLength}) = ExceedingLength<T>;
  const factory CoreValueFailure.stringTooShort(
      {required T failedValue, required int minLength}) = StringTooShort<T>;
  const factory CoreValueFailure.stringDoesntContainKeyword(
      {required T failedValue, required String missingKeyword}) = StringDoesntContainKeyword<T>;
  const factory CoreValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory CoreValueFailure.multiline({required T failedValue}) =
      Multiline<T>;
  const factory CoreValueFailure.nonNumeric({required T failedValue}) =
      NonNumeric<T>;
  const factory CoreValueFailure.noNumericValuePresent(
      {required T failedValue}) = NoNumericValuePresent<T>;
  const factory CoreValueFailure.nonPositive({required T failedValue}) =
      NonPositive<T>;
  const factory CoreValueFailure.numberOutsideInterval(
      {required T failedValue,
      required num min,
      required num max}) = NumberOutsideInterval<T>;

  const factory CoreValueFailure.imageTooBig(
      {required T failedValue,
      required int maxHeight,
      required int maxWidth}) = ImageTooBig<T>;

  const factory CoreValueFailure.imageTooSmall(
      {required T failedValue,
      required int minHeight,
      required int minWidth}) = ImageTooSmall<T>;

  const factory CoreValueFailure.incorrectPostalCode({required T failedValue}) =
      IncorrectPostalCode<T>;
  const factory CoreValueFailure.noAddressNumber({required T failedValue}) =
      NoAddressNumber<T>;
}
