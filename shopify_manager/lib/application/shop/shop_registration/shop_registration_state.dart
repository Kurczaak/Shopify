part of 'shop_registration_bloc.dart';

@freezed
class ShopRegistrationState with _$ShopRegistrationState {
  const factory ShopRegistrationState({
    required Shop shop,
    required Option<ShopLogo> shopLogo,
    required bool isSaving,
    required Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ShopRegistrationState;

  factory ShopRegistrationState.initial() => ShopRegistrationState(
        shop: Shop.empty(),
        isSaving: false,
        saveFailureOrSuccessOption: none(),
        shopLogo: none(),
      );
}
