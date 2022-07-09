part of 'cart_and_favourite_bloc.dart';

@freezed
class CartAndFavouriteState with _$CartAndFavouriteState {
  const factory CartAndFavouriteState({
    required bool isFavouirte,
    required bool isLoading,
    required Option<CartFailure> failureOption,
  }) = _CartAndFavouriteState;
  factory CartAndFavouriteState.initial() => CartAndFavouriteState(
      isFavouirte: false, isLoading: false, failureOption: none());
}
