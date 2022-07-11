import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failures.freezed.dart';

@freezed
class OrderValueFailure<T> with _$OrderValueFailure<T> {
  const factory OrderValueFailure.incorrectStatusString(String failedValue) =
      _IncorrectStatusString<T>;
}
