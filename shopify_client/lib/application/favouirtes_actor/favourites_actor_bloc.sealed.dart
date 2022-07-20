// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites_actor_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [FavouritesActorEvent] {
///
/// ([FavouritesActorEventInitialize] initialize){[UniqueId] productId} with data equality
///
/// ([FavouritesActorEventToggleFavourite] toggleFavourite){[UniqueId] productId} with data equality
///
/// }
@SealedManifest(_FavouritesActorEvent)
abstract class FavouritesActorEvent {
  const FavouritesActorEvent._internal();

  const factory FavouritesActorEvent.initialize({
    required UniqueId productId,
  }) = FavouritesActorEventInitialize;

  const factory FavouritesActorEvent.toggleFavourite({
    required UniqueId productId,
  }) = FavouritesActorEventToggleFavourite;

  bool get isInitialize => this is FavouritesActorEventInitialize;

  bool get isToggleFavourite => this is FavouritesActorEventToggleFavourite;

  FavouritesActorEventInitialize get asInitialize =>
      this as FavouritesActorEventInitialize;

  FavouritesActorEventToggleFavourite get asToggleFavourite =>
      this as FavouritesActorEventToggleFavourite;

  FavouritesActorEventInitialize? get asInitializeOrNull {
    final favouritesActorEvent = this;
    return favouritesActorEvent is FavouritesActorEventInitialize
        ? favouritesActorEvent
        : null;
  }

  FavouritesActorEventToggleFavourite? get asToggleFavouriteOrNull {
    final favouritesActorEvent = this;
    return favouritesActorEvent is FavouritesActorEventToggleFavourite
        ? favouritesActorEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(UniqueId productId) initialize,
    required R Function(UniqueId productId) toggleFavourite,
  }) {
    final favouritesActorEvent = this;
    if (favouritesActorEvent is FavouritesActorEventInitialize) {
      return initialize(favouritesActorEvent.productId);
    } else if (favouritesActorEvent is FavouritesActorEventToggleFavourite) {
      return toggleFavourite(favouritesActorEvent.productId);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(UniqueId productId)? initialize,
    R Function(UniqueId productId)? toggleFavourite,
    required R Function(FavouritesActorEvent favouritesActorEvent) orElse,
  }) {
    final favouritesActorEvent = this;
    if (favouritesActorEvent is FavouritesActorEventInitialize) {
      return initialize != null
          ? initialize(favouritesActorEvent.productId)
          : orElse(favouritesActorEvent);
    } else if (favouritesActorEvent is FavouritesActorEventToggleFavourite) {
      return toggleFavourite != null
          ? toggleFavourite(favouritesActorEvent.productId)
          : orElse(favouritesActorEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(UniqueId productId)? initialize,
    void Function(UniqueId productId)? toggleFavourite,
    void Function(FavouritesActorEvent favouritesActorEvent)? orElse,
  }) {
    final favouritesActorEvent = this;
    if (favouritesActorEvent is FavouritesActorEventInitialize) {
      if (initialize != null) {
        initialize(favouritesActorEvent.productId);
      } else if (orElse != null) {
        orElse(favouritesActorEvent);
      }
    } else if (favouritesActorEvent is FavouritesActorEventToggleFavourite) {
      if (toggleFavourite != null) {
        toggleFavourite(favouritesActorEvent.productId);
      } else if (orElse != null) {
        orElse(favouritesActorEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(UniqueId productId)? initialize,
    R Function(UniqueId productId)? toggleFavourite,
    R Function(FavouritesActorEvent favouritesActorEvent)? orElse,
  }) {
    final favouritesActorEvent = this;
    if (favouritesActorEvent is FavouritesActorEventInitialize) {
      return initialize != null
          ? initialize(favouritesActorEvent.productId)
          : orElse?.call(favouritesActorEvent);
    } else if (favouritesActorEvent is FavouritesActorEventToggleFavourite) {
      return toggleFavourite != null
          ? toggleFavourite(favouritesActorEvent.productId)
          : orElse?.call(favouritesActorEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(FavouritesActorEventInitialize initialize) initialize,
    required R Function(FavouritesActorEventToggleFavourite toggleFavourite)
        toggleFavourite,
  }) {
    final favouritesActorEvent = this;
    if (favouritesActorEvent is FavouritesActorEventInitialize) {
      return initialize(favouritesActorEvent);
    } else if (favouritesActorEvent is FavouritesActorEventToggleFavourite) {
      return toggleFavourite(favouritesActorEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(FavouritesActorEventInitialize initialize)? initialize,
    R Function(FavouritesActorEventToggleFavourite toggleFavourite)?
        toggleFavourite,
    required R Function(FavouritesActorEvent favouritesActorEvent) orElse,
  }) {
    final favouritesActorEvent = this;
    if (favouritesActorEvent is FavouritesActorEventInitialize) {
      return initialize != null
          ? initialize(favouritesActorEvent)
          : orElse(favouritesActorEvent);
    } else if (favouritesActorEvent is FavouritesActorEventToggleFavourite) {
      return toggleFavourite != null
          ? toggleFavourite(favouritesActorEvent)
          : orElse(favouritesActorEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(FavouritesActorEventInitialize initialize)? initialize,
    void Function(FavouritesActorEventToggleFavourite toggleFavourite)?
        toggleFavourite,
    void Function(FavouritesActorEvent favouritesActorEvent)? orElse,
  }) {
    final favouritesActorEvent = this;
    if (favouritesActorEvent is FavouritesActorEventInitialize) {
      if (initialize != null) {
        initialize(favouritesActorEvent);
      } else if (orElse != null) {
        orElse(favouritesActorEvent);
      }
    } else if (favouritesActorEvent is FavouritesActorEventToggleFavourite) {
      if (toggleFavourite != null) {
        toggleFavourite(favouritesActorEvent);
      } else if (orElse != null) {
        orElse(favouritesActorEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(FavouritesActorEventInitialize initialize)? initialize,
    R Function(FavouritesActorEventToggleFavourite toggleFavourite)?
        toggleFavourite,
    R Function(FavouritesActorEvent favouritesActorEvent)? orElse,
  }) {
    final favouritesActorEvent = this;
    if (favouritesActorEvent is FavouritesActorEventInitialize) {
      return initialize != null
          ? initialize(favouritesActorEvent)
          : orElse?.call(favouritesActorEvent);
    } else if (favouritesActorEvent is FavouritesActorEventToggleFavourite) {
      return toggleFavourite != null
          ? toggleFavourite(favouritesActorEvent)
          : orElse?.call(favouritesActorEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([FavouritesActorEventInitialize] : [FavouritesActorEvent]) initialize){[UniqueId] productId}
///
/// with data equality
class FavouritesActorEventInitialize extends FavouritesActorEvent
    with EquatableMixin {
  const FavouritesActorEventInitialize({
    required this.productId,
  }) : super._internal();

  final UniqueId productId;

  @override
  String toString() => 'FavouritesActorEvent.initialize(productId: $productId)';

  @override
  List<Object?> get props => [
        productId,
      ];
}

/// (([FavouritesActorEventToggleFavourite] : [FavouritesActorEvent]) toggleFavourite){[UniqueId] productId}
///
/// with data equality
class FavouritesActorEventToggleFavourite extends FavouritesActorEvent
    with EquatableMixin {
  const FavouritesActorEventToggleFavourite({
    required this.productId,
  }) : super._internal();

  final UniqueId productId;

  @override
  String toString() =>
      'FavouritesActorEvent.toggleFavourite(productId: $productId)';

  @override
  List<Object?> get props => [
        productId,
      ];
}
