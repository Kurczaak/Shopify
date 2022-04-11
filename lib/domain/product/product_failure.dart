import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  const factory ProductFailure.unexpected() = _Unexpected;
  const factory ProductFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory ProductFailure.unableToUpdate() = _UnableToUpdate;
  const factory ProductFailure.timeout(Duration timeout) = _Timeout;
  const factory ProductFailure.noInternetConnection() = _NoInternetConnection;
}
