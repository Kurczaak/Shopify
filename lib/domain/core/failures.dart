import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueVailure<T> with _$ValueVailure<T> {
  const factory ValueVailure.invalidEmail({required T failedValue}) =
      InvalidEmail<T>;
}
