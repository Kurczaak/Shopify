import 'package:freezed_annotation/freezed_annotation.dart';
part 'best_offer_failure.freezed.dart';

@freezed
class BestOfferFailure with _$BestOfferFailure {
  const factory BestOfferFailure.unexpected() = _Unexpected;
  const factory BestOfferFailure.noInternetConnection() = _NoInternetConnection;
  const factory BestOfferFailure.timeout() = _Timeout;
  const factory BestOfferFailure.insufficientPermission() =
      _InsufficientPermission;
}
