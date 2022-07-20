// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites_watcher_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [FavouritesWatcherEvent] {
///
/// ([FavouritesWatcherEventWatchFavourites] watchFavourites){} with data equality
///
/// }
@SealedManifest(_FavouritesWatcherEvent)
abstract class FavouritesWatcherEvent {
  const FavouritesWatcherEvent._internal();

  const factory FavouritesWatcherEvent.watchFavourites() =
      FavouritesWatcherEventWatchFavourites;

  bool get isWatchFavourites => this is FavouritesWatcherEventWatchFavourites;

  FavouritesWatcherEventWatchFavourites get asWatchFavourites =>
      this as FavouritesWatcherEventWatchFavourites;

  FavouritesWatcherEventWatchFavourites? get asWatchFavouritesOrNull {
    final favouritesWatcherEvent = this;
    return favouritesWatcherEvent is FavouritesWatcherEventWatchFavourites
        ? favouritesWatcherEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function() watchFavourites,
  }) {
    final favouritesWatcherEvent = this;
    if (favouritesWatcherEvent is FavouritesWatcherEventWatchFavourites) {
      return watchFavourites();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? watchFavourites,
    required R Function(FavouritesWatcherEvent favouritesWatcherEvent) orElse,
  }) {
    final favouritesWatcherEvent = this;
    if (favouritesWatcherEvent is FavouritesWatcherEventWatchFavourites) {
      return watchFavourites != null
          ? watchFavourites()
          : orElse(favouritesWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? watchFavourites,
    void Function(FavouritesWatcherEvent favouritesWatcherEvent)? orElse,
  }) {
    final favouritesWatcherEvent = this;
    if (favouritesWatcherEvent is FavouritesWatcherEventWatchFavourites) {
      if (watchFavourites != null) {
        watchFavourites();
      } else if (orElse != null) {
        orElse(favouritesWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? watchFavourites,
    R Function(FavouritesWatcherEvent favouritesWatcherEvent)? orElse,
  }) {
    final favouritesWatcherEvent = this;
    if (favouritesWatcherEvent is FavouritesWatcherEventWatchFavourites) {
      return watchFavourites != null
          ? watchFavourites()
          : orElse?.call(favouritesWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(FavouritesWatcherEventWatchFavourites watchFavourites)
        watchFavourites,
  }) {
    final favouritesWatcherEvent = this;
    if (favouritesWatcherEvent is FavouritesWatcherEventWatchFavourites) {
      return watchFavourites(favouritesWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(FavouritesWatcherEventWatchFavourites watchFavourites)?
        watchFavourites,
    required R Function(FavouritesWatcherEvent favouritesWatcherEvent) orElse,
  }) {
    final favouritesWatcherEvent = this;
    if (favouritesWatcherEvent is FavouritesWatcherEventWatchFavourites) {
      return watchFavourites != null
          ? watchFavourites(favouritesWatcherEvent)
          : orElse(favouritesWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(FavouritesWatcherEventWatchFavourites watchFavourites)?
        watchFavourites,
    void Function(FavouritesWatcherEvent favouritesWatcherEvent)? orElse,
  }) {
    final favouritesWatcherEvent = this;
    if (favouritesWatcherEvent is FavouritesWatcherEventWatchFavourites) {
      if (watchFavourites != null) {
        watchFavourites(favouritesWatcherEvent);
      } else if (orElse != null) {
        orElse(favouritesWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(FavouritesWatcherEventWatchFavourites watchFavourites)?
        watchFavourites,
    R Function(FavouritesWatcherEvent favouritesWatcherEvent)? orElse,
  }) {
    final favouritesWatcherEvent = this;
    if (favouritesWatcherEvent is FavouritesWatcherEventWatchFavourites) {
      return watchFavourites != null
          ? watchFavourites(favouritesWatcherEvent)
          : orElse?.call(favouritesWatcherEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([FavouritesWatcherEventWatchFavourites] : [FavouritesWatcherEvent]) watchFavourites){}
///
/// with data equality
class FavouritesWatcherEventWatchFavourites extends FavouritesWatcherEvent
    with EquatableMixin {
  const FavouritesWatcherEventWatchFavourites() : super._internal();

  @override
  String toString() => 'FavouritesWatcherEvent.watchFavourites()';

  @override
  List<Object?> get props => [];
}
