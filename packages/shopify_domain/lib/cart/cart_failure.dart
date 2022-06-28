import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_failure.freezed.dart';

@freezed
class CartFailure with _$CartFailure {
  const factory CartFailure.unexpected() = _Unexpected;
  const factory CartFailure.invalidCartItem() = _InvalidCartItem;
  const factory CartFailure.noInternetConnection() = _noInternetConnection;
}
