import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/value_failures.dart';
import 'package:shopify_manager/domain/product/value_failures.dart';
import '../auth/value_failures.dart';
import '../shop/failures.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
  const factory ValueFailure.shop(ShopValueFailure<T> f) = _Shop<T>;
  const factory ValueFailure.product(ProductValueFailure<T> f) = _Product<T>;
  const factory ValueFailure.core(CoreValueFailure<T> f) = _Core<T>;
}

// @freezed
// class CoreValueFailure<T> with _$CoreValueFailure<T> {
//   const factory CoreValueFailure.incorrectAddress({required T input}) =
//       IncorrectAddress<T>;
// }
