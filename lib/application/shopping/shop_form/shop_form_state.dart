part of 'shop_form_bloc.dart';

@freezed
abstract class ShopFormState with _$ShopFormState {
  const factory ShopFormState({
    required Shop shop,
    required bool showErrorMessages,
    required bool isSaving,
    required Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ShopFormState;

  factory ShopFormState.initial() => ShopFormState(
      shop: Shop.empty(),
      showErrorMessages: false,
      isSaving: false,
      saveFailureOrSuccessOption: none());
}
