import 'package:freezed_annotation/freezed_annotation.dart';
import '../auth/value_failures.dart';
import '../shopping/failures.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
  const factory ValueFailure.shopping(ShoppingValueFailure<T> f) = _Product<T>;
}
