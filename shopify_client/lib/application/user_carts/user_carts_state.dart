part of 'user_carts_bloc.dart';

@freezed
class UserCartsState with _$UserCartsState {
  const factory UserCartsState({
    required Option<UserCarts> userCartsOption,
    required bool isLoading,
    required Option<CartFailure> failureOption,
    required Option<Either<CartFailure, Unit>> sendOrderFailureOrUnitOption,
  }) = _CartState;

  factory UserCartsState.initial() => UserCartsState(
        userCartsOption: none(),
        isLoading: false,
        failureOption: none(),
        sendOrderFailureOrUnitOption: none(),
      );
}
