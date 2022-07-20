import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_failure.freezed.dart';

@freezed
class CartFailure with _$CartFailure {
  const factory CartFailure.unexpected() = _Unexpected;
  const factory CartFailure.invalidCartItem() = _InvalidCartItem;
  const factory CartFailure.noInternetConnection() = _NoInternetConnection;
  const factory CartFailure.timeout() = _Timeout;
  const factory CartFailure.emptyCart() = _EmptyCart;
  const factory CartFailure.insufficientPermission() = _InsufficientPermission;
  const factory CartFailure.itemDoesNotExist() = _ItemDoesNotExist;
  const factory CartFailure.couldNotInitialize() = _CouldNotInitialize;
}
