import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_client/domain/shopping/failures.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
  const factory ValueFailure.product(ProductValueFailure<T> f) = _Product<T>;
  const factory ValueFailure.shopping(ShoppingValueFailure<T> f) = _Shopping<T>;
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
class ProductValueFailure<T> with _$ProductValueFailure<T> {
  const factory ProductValueFailure.exceedingLength(StringValueFailure f) =
      ExceedingLength<T>;

  const factory ProductValueFailure.bodyTooLong(
      {required T failedValue, required int maxLength}) = BodyTooLong<T>;
  const factory ProductValueFailure.empty() = Empty<T>;
  const factory ProductValueFailure.multiline({required T failedValue}) =
      Multiline<T>;
  const factory ProductValueFailure.nonPositivePrice({required T failedValue}) =
      NonPositivePrice<T>;
}

@freezed
class StringValueFailure with _$StringValueFailure {
  const factory StringValueFailure.stringTooLong({
    required String failedValue,
    required int maxLength,
  }) = StringTooLong;
}
