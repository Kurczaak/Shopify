part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required Option<UserCarts> userCartsOption,
    required bool isLoading,
    required Option<CartFailure> failureOption,
  }) = _CartState;

  factory CartState.initial() => CartState(
        userCartsOption: none(),
        isLoading: false,
        failureOption: none(),
      );
}
