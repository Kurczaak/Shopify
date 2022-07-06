part of 'user_carts_bloc.dart';

@freezed
class UserCartsState with _$UserCartsState {
  const factory UserCartsState({
    required Option<UserCarts> userCartsOption,
    required bool isLoading,
    required Option<CartFailure> failureOption,
  }) = _CartState;

  factory UserCartsState.initial() => UserCartsState(
        userCartsOption: none(),
        isLoading: false,
        failureOption: none(),
      );
}
