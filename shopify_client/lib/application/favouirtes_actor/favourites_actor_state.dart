part of 'favourites_actor_bloc.dart';

@freezed
class FavouritesActorState with _$FavouritesActorState {
  const factory FavouritesActorState({
    required Option<bool> isFavouirte,
    required bool isLoading,
    required Option<FavouriteFailure> favouriteFailureOption,
  }) = _FavouritesActorState;
  factory FavouritesActorState.initial() => FavouritesActorState(
        isFavouirte: none(),
        isLoading: false,
        favouriteFailureOption: none(),
      );
}
