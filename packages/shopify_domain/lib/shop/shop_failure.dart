import 'package:freezed_annotation/freezed_annotation.dart';
part 'shop_failure.freezed.dart';

@freezed
class ShopFailure with _$ShopFailure {
  const factory ShopFailure.unexpected() = _Unexpected;
  const factory ShopFailure.insufficientPermission() = _InsufficientPermission;
  const factory ShopFailure.unableToUpdate() = _UnableToUpdate;
  const factory ShopFailure.timeout(Duration timeout) = _Timeout;
  const factory ShopFailure.noShopFound() = _NoShopFound;
  const factory ShopFailure.incorrectLocationGiven() = _IncorrectLocationGiven;
  const factory ShopFailure.locationPermissionDenied() =
      _LocationPermissionDenied;
}
