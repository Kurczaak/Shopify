import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_client/domain/shopping/failures.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
  const factory ValueFailure.core(CoreValueFailure<T> f) = _Core<T>;
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
class CoreValueFailure<T> with _$CoreValueFailure<T> {
  const factory CoreValueFailure.exceedingLength(StringValueFailure f) =
      ExceedingLength<T>;

  const factory CoreValueFailure.empty() = Empty<T>;
  const factory CoreValueFailure.multiline({required T failedValue}) =
      Multiline<T>;
}

@freezed
class StringValueFailure with _$StringValueFailure {
  const factory StringValueFailure.stringTooLong({
    required String failedValue,
    required int maxLength,
  }) = StringTooLong;
}
