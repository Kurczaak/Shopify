import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
class AuthValueFailure<T> with _$AuthValueFailure<T> {
  // Email
  const factory AuthValueFailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;
  // Password
  const factory AuthValueFailure.incorrectPassword({required T failedValue}) =
      ShortPassword<T>;
}
