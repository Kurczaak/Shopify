part of 'favourites_watcher_bloc.dart';

@freezed
class FavouritesWatcherState with _$FavouritesWatcherState {
  const factory FavouritesWatcherState({
    required KtList<FavouriteProduct> favourites,
    required bool isLoading,
    required Option<FavouriteFailure> failureOption,
  }) = _FavouritesWatcherState;

  factory FavouritesWatcherState.initial() => FavouritesWatcherState(
      favourites: const KtList.empty(),
      isLoading: false,
      failureOption: none());
}
