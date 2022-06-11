import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core/failures.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  const factory ProductFailure.unexpected() = _Unexpected;
  const factory ProductFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory ProductFailure.unableToUpdate() = _UnableToUpdate;
  const factory ProductFailure.timeout(Duration timeout) = _Timeout;
  const factory ProductFailure.noInternetConnection() = _NoInternetConnection;
  const factory ProductFailure.productNotFound() = _ProductNotFound;
  const factory ProductFailure.shopNotFound() = _ShopNotFound;
  const factory ProductFailure.valueFailure(ValueFailure failure) =
      _ValueFailure;
}
