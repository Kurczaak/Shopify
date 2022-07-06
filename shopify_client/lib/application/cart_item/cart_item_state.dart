part of 'cart_item_bloc.dart';

@freezed
class CartItemState with _$CartItemState {
  const factory CartItemState({
    required bool isLoading,
    required Option<CartItem> cartItemOption,
    required Option<ValueFailure> cartItemValueFailureOption,
    required Option<CartFailure> failureOption,
  }) = _CartItemState;

  factory CartItemState.initial() => CartItemState(
      isLoading: false,
      cartItemOption: none(),
      failureOption: none(),
      cartItemValueFailureOption: none());
}
