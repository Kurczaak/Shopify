import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({required T failedValue}) = Empty<T>;
  // Email
  const factory ValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;
  // Password
  const factory ValueFailure.shortPassword({required T failedValue}) =
      ShortPassword<T>;
  const factory ValueFailure.noSpecialCharacterPassword(
      {required T failedValue}) = NoSpecialCharacterPassword<T>;
  const factory ValueFailure.noNumericalCharacterPassword(
      {required T failedValue}) = NoNumericalCharacterPassword<T>;
  const factory ValueFailure.noCapitalLetterPassword({required T failedValue}) =
      NoCapitalLetterPassword<T>;
  const factory ValueFailure.noSmallLetterPassword({required T failedValue}) =
      NoSmallLetterPassword<T>;
}
