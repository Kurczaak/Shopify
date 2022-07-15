import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_failure.freezed.dart';

@freezed
class FavouriteFailure with _$FavouriteFailure {
  const factory FavouriteFailure.unexpected() = _Unexpected;
  const factory FavouriteFailure.indalidProduct() = _IndalidProduct;
  const factory FavouriteFailure.noInternetConnection() = _NoInternetConnection;
  const factory FavouriteFailure.timeout() = _Timeout;
  const factory FavouriteFailure.insufficientPermission() =
      _InsufficientPermission;
}
