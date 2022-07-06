part of 'cart_item_bloc.dart';

@freezed
class CartItemState with _$CartItemState {
  const factory CartItemState({
    required bool isLoading,
    required Option<CartItem> cartItemOption,
    required Option<CartFailure> failureOption,
  }) = _CartItemState;

  factory CartItemState.initial() => CartItemState(
        isLoading: false,
        cartItemOption: none(),
        failureOption: none(),
      );

  factory CartItemState.failure({
    required CartItemState previousState,
    required CartFailure failure,
  }) =>
      CartItemState(
        isLoading: false,
        cartItemOption: previousState.cartItemOption,
        failureOption: some(failure),
      );
}
