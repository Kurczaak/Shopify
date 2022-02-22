part of 'shop_form_bloc.dart';

@freezed
abstract class ShopFormState with _$ShopFormState {
  const factory ShopFormState({
    required ShopForm shop,
    required bool showErrorMessages,
  }) = _ShopFormState;

  factory ShopFormState.initial() => ShopFormState(
        shop: ShopForm.empty(),
        showErrorMessages: false,
      );
}
