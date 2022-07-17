part of 'cart_and_favourite_bloc.dart';

@freezed
class CartAndFavouriteState with _$CartAndFavouriteState {
  const factory CartAndFavouriteState({
    required Option<bool> isFavouirte,
    required bool isLoading,
    required Option<CartFailure> failureOption,
  }) = _CartAndFavouriteState;
  factory CartAndFavouriteState.initial() => CartAndFavouriteState(
      isFavouirte: none(), isLoading: false, failureOption: none());
}
