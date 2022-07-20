part of 'cart_and_favourite_bloc.dart';

@freezed
class CartActorState with _$CartActorState {
  const factory CartActorState({
    required bool isLoading,
    required Option<CartFailure> cartFailureOption,
  }) = _CartActorState;
  factory CartActorState.initial() => CartActorState(
        isLoading: false,
        cartFailureOption: none(),
      );
}
