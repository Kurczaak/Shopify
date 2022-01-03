import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
  const factory ValueFailure.product(ShoppingValueFailure<T> f) = _Product<T>;
}

@freezed
class AuthValueFailure<T> with _$AuthValueFailure<T> {
  // Email
  const factory AuthValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;
  // Password
  const factory AuthValueFailure.incorrectPassword({required T failedValue}) =
      ShortPassword<T>;
}

@freezed
class ShoppingValueFailure<T> with _$ShoppingValueFailure<T> {
  const factory ShoppingValueFailure.exceedingLength(
      {required T failedValue, required int maxLength}) = ExceedingLength<T>;

  const factory ShoppingValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory ShoppingValueFailure.multiline({required T failedValue}) =
      Multiline<T>;
  const factory ShoppingValueFailure.incorrectPostalCode(
      {required T failedValue}) = IncorrectPostalCode<T>;
  const factory ShoppingValueFailure.shopClosedAllWeekLong(
      {required T failedValue}) = ShopClosedAllWeekLong<T>;
  const factory ShoppingValueFailure.noPhotoSelected({required T failedValue}) =
      NoPhotoSelected<T>;
  const factory ShoppingValueFailure.nonPositivePrice(
      {required T failedValue}) = NonPositivePrice<T>;
}
