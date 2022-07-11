import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_failure.freezed.dart';

@freezed
class OrderFailure with _$OrderFailure {
  const factory OrderFailure.unexpectd() = _Unexpected;
  const factory OrderFailure.invalidCart() = _InvalidCart;
  const factory OrderFailure.noInternetConnection() = _NoInternetConnection;
  const factory OrderFailure.timeout() = _Timeout;
  const factory OrderFailure.insufficientPermission() = _InsufficientPermission;
}
