import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failures.freezed.dart';

@freezed
class CartValueFailure<T> with _$CartValueFailure<T> {
  const factory CartValueFailure.emptyyCartItemsList() = EmptyCartItemsList<T>;
}
