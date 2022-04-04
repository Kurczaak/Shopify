import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class CoreValueFailure<T> with _$CoreValueFailure<T> {
  const factory CoreValueFailure.listTooLong(
      {required T failedValue, required int maxLength}) = ListTooLong<T>;
}
