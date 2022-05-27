// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_watcher_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [ShopWatcherEvent] {
///
/// ([ShopWatcherEventWatchNearbyShops] watchNearbyShops){[double] radius} with data equality
///
/// ([ShopWatcherEventWatchShopsByLocation] watchShopsByLocation){[double] radius, [Location] location} with data equality
///
/// }
@SealedManifest(_ShopWatcherEvent)
abstract class ShopWatcherEvent {
  const ShopWatcherEvent._internal();

  const factory ShopWatcherEvent.watchNearbyShops({
    required double radius,
  }) = ShopWatcherEventWatchNearbyShops;

  const factory ShopWatcherEvent.watchShopsByLocation({
    required double radius,
    required Location location,
  }) = ShopWatcherEventWatchShopsByLocation;

  bool get isWatchNearbyShops => this is ShopWatcherEventWatchNearbyShops;

  bool get isWatchShopsByLocation =>
      this is ShopWatcherEventWatchShopsByLocation;

  ShopWatcherEventWatchNearbyShops get asWatchNearbyShops =>
      this as ShopWatcherEventWatchNearbyShops;

  ShopWatcherEventWatchShopsByLocation get asWatchShopsByLocation =>
      this as ShopWatcherEventWatchShopsByLocation;

  ShopWatcherEventWatchNearbyShops? get asWatchNearbyShopsOrNull {
    final shopWatcherEvent = this;
    return shopWatcherEvent is ShopWatcherEventWatchNearbyShops
        ? shopWatcherEvent
        : null;
  }

  ShopWatcherEventWatchShopsByLocation? get asWatchShopsByLocationOrNull {
    final shopWatcherEvent = this;
    return shopWatcherEvent is ShopWatcherEventWatchShopsByLocation
        ? shopWatcherEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(double radius) watchNearbyShops,
    required R Function(double radius, Location location) watchShopsByLocation,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is ShopWatcherEventWatchNearbyShops) {
      return watchNearbyShops(shopWatcherEvent.radius);
    } else if (shopWatcherEvent is ShopWatcherEventWatchShopsByLocation) {
      return watchShopsByLocation(
          shopWatcherEvent.radius, shopWatcherEvent.location);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(double radius)? watchNearbyShops,
    R Function(double radius, Location location)? watchShopsByLocation,
    required R Function(ShopWatcherEvent shopWatcherEvent) orElse,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is ShopWatcherEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops(shopWatcherEvent.radius)
          : orElse(shopWatcherEvent);
    } else if (shopWatcherEvent is ShopWatcherEventWatchShopsByLocation) {
      return watchShopsByLocation != null
          ? watchShopsByLocation(
              shopWatcherEvent.radius, shopWatcherEvent.location)
          : orElse(shopWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(double radius)? watchNearbyShops,
    void Function(double radius, Location location)? watchShopsByLocation,
    void Function(ShopWatcherEvent shopWatcherEvent)? orElse,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is ShopWatcherEventWatchNearbyShops) {
      if (watchNearbyShops != null) {
        watchNearbyShops(shopWatcherEvent.radius);
      } else if (orElse != null) {
        orElse(shopWatcherEvent);
      }
    } else if (shopWatcherEvent is ShopWatcherEventWatchShopsByLocation) {
      if (watchShopsByLocation != null) {
        watchShopsByLocation(
            shopWatcherEvent.radius, shopWatcherEvent.location);
      } else if (orElse != null) {
        orElse(shopWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(double radius)? watchNearbyShops,
    R Function(double radius, Location location)? watchShopsByLocation,
    R Function(ShopWatcherEvent shopWatcherEvent)? orElse,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is ShopWatcherEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops(shopWatcherEvent.radius)
          : orElse?.call(shopWatcherEvent);
    } else if (shopWatcherEvent is ShopWatcherEventWatchShopsByLocation) {
      return watchShopsByLocation != null
          ? watchShopsByLocation(
              shopWatcherEvent.radius, shopWatcherEvent.location)
          : orElse?.call(shopWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ShopWatcherEventWatchNearbyShops watchNearbyShops)
        watchNearbyShops,
    required R Function(
            ShopWatcherEventWatchShopsByLocation watchShopsByLocation)
        watchShopsByLocation,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is ShopWatcherEventWatchNearbyShops) {
      return watchNearbyShops(shopWatcherEvent);
    } else if (shopWatcherEvent is ShopWatcherEventWatchShopsByLocation) {
      return watchShopsByLocation(shopWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ShopWatcherEventWatchNearbyShops watchNearbyShops)?
        watchNearbyShops,
    R Function(ShopWatcherEventWatchShopsByLocation watchShopsByLocation)?
        watchShopsByLocation,
    required R Function(ShopWatcherEvent shopWatcherEvent) orElse,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is ShopWatcherEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops(shopWatcherEvent)
          : orElse(shopWatcherEvent);
    } else if (shopWatcherEvent is ShopWatcherEventWatchShopsByLocation) {
      return watchShopsByLocation != null
          ? watchShopsByLocation(shopWatcherEvent)
          : orElse(shopWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ShopWatcherEventWatchNearbyShops watchNearbyShops)?
        watchNearbyShops,
    void Function(ShopWatcherEventWatchShopsByLocation watchShopsByLocation)?
        watchShopsByLocation,
    void Function(ShopWatcherEvent shopWatcherEvent)? orElse,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is ShopWatcherEventWatchNearbyShops) {
      if (watchNearbyShops != null) {
        watchNearbyShops(shopWatcherEvent);
      } else if (orElse != null) {
        orElse(shopWatcherEvent);
      }
    } else if (shopWatcherEvent is ShopWatcherEventWatchShopsByLocation) {
      if (watchShopsByLocation != null) {
        watchShopsByLocation(shopWatcherEvent);
      } else if (orElse != null) {
        orElse(shopWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ShopWatcherEventWatchNearbyShops watchNearbyShops)?
        watchNearbyShops,
    R Function(ShopWatcherEventWatchShopsByLocation watchShopsByLocation)?
        watchShopsByLocation,
    R Function(ShopWatcherEvent shopWatcherEvent)? orElse,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is ShopWatcherEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops(shopWatcherEvent)
          : orElse?.call(shopWatcherEvent);
    } else if (shopWatcherEvent is ShopWatcherEventWatchShopsByLocation) {
      return watchShopsByLocation != null
          ? watchShopsByLocation(shopWatcherEvent)
          : orElse?.call(shopWatcherEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ShopWatcherEventWatchNearbyShops] : [ShopWatcherEvent]) watchNearbyShops){[double] radius}
///
/// with data equality
class ShopWatcherEventWatchNearbyShops extends ShopWatcherEvent
    with EquatableMixin {
  const ShopWatcherEventWatchNearbyShops({
    required this.radius,
  }) : super._internal();

  final double radius;

  @override
  String toString() => 'ShopWatcherEvent.watchNearbyShops(radius: $radius)';

  @override
  List<Object?> get props => [
        radius,
      ];
}

/// (([ShopWatcherEventWatchShopsByLocation] : [ShopWatcherEvent]) watchShopsByLocation){[double] radius, [Location] location}
///
/// with data equality
class ShopWatcherEventWatchShopsByLocation extends ShopWatcherEvent
    with EquatableMixin {
  const ShopWatcherEventWatchShopsByLocation({
    required this.radius,
    required this.location,
  }) : super._internal();

  final double radius;
  final Location location;

  @override
  String toString() =>
      'ShopWatcherEvent.watchShopsByLocation(radius: $radius, location: $location)';

  @override
  List<Object?> get props => [
        radius,
        location,
      ];
}

/// [ShopWatcherState] {
///
/// ([ShopWatcherStateInitial] initial){} with data equality
///
/// ([ShopWatcherStateLoading] loading){} with data equality
///
/// ([ShopWatcherStateLoaded] loaded){[KtList<Shop>] shops, [Location] location, [double] radius} with data equality
///
/// ([ShopWatcherStateError] error){[ShopFailure] failure} with data equality
///
/// }
@SealedManifest(_ShopWatcherState)
abstract class ShopWatcherState {
  const ShopWatcherState._internal();

  const factory ShopWatcherState.initial() = ShopWatcherStateInitial;

  const factory ShopWatcherState.loading() = ShopWatcherStateLoading;

  const factory ShopWatcherState.loaded({
    required KtList<Shop> shops,
    required Location location,
    required double radius,
  }) = ShopWatcherStateLoaded;

  const factory ShopWatcherState.error({
    required ShopFailure failure,
  }) = ShopWatcherStateError;

  bool get isInitial => this is ShopWatcherStateInitial;

  bool get isLoading => this is ShopWatcherStateLoading;

  bool get isLoaded => this is ShopWatcherStateLoaded;

  bool get isError => this is ShopWatcherStateError;

  ShopWatcherStateInitial get asInitial => this as ShopWatcherStateInitial;

  ShopWatcherStateLoading get asLoading => this as ShopWatcherStateLoading;

  ShopWatcherStateLoaded get asLoaded => this as ShopWatcherStateLoaded;

  ShopWatcherStateError get asError => this as ShopWatcherStateError;

  ShopWatcherStateInitial? get asInitialOrNull {
    final shopWatcherState = this;
    return shopWatcherState is ShopWatcherStateInitial
        ? shopWatcherState
        : null;
  }

  ShopWatcherStateLoading? get asLoadingOrNull {
    final shopWatcherState = this;
    return shopWatcherState is ShopWatcherStateLoading
        ? shopWatcherState
        : null;
  }

  ShopWatcherStateLoaded? get asLoadedOrNull {
    final shopWatcherState = this;
    return shopWatcherState is ShopWatcherStateLoaded ? shopWatcherState : null;
  }

  ShopWatcherStateError? get asErrorOrNull {
    final shopWatcherState = this;
    return shopWatcherState is ShopWatcherStateError ? shopWatcherState : null;
  }

  R when<R extends Object?>({
    required R Function() initial,
    required R Function() loading,
    required R Function(KtList<Shop> shops, Location location, double radius)
        loaded,
    required R Function(ShopFailure failure) error,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is ShopWatcherStateInitial) {
      return initial();
    } else if (shopWatcherState is ShopWatcherStateLoading) {
      return loading();
    } else if (shopWatcherState is ShopWatcherStateLoaded) {
      return loaded(shopWatcherState.shops, shopWatcherState.location,
          shopWatcherState.radius);
    } else if (shopWatcherState is ShopWatcherStateError) {
      return error(shopWatcherState.failure);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(KtList<Shop> shops, Location location, double radius)? loaded,
    R Function(ShopFailure failure)? error,
    required R Function(ShopWatcherState shopWatcherState) orElse,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is ShopWatcherStateInitial) {
      return initial != null ? initial() : orElse(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateLoading) {
      return loading != null ? loading() : orElse(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateLoaded) {
      return loaded != null
          ? loaded(shopWatcherState.shops, shopWatcherState.location,
              shopWatcherState.radius)
          : orElse(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateError) {
      return error != null
          ? error(shopWatcherState.failure)
          : orElse(shopWatcherState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? initial,
    void Function()? loading,
    void Function(KtList<Shop> shops, Location location, double radius)? loaded,
    void Function(ShopFailure failure)? error,
    void Function(ShopWatcherState shopWatcherState)? orElse,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is ShopWatcherStateInitial) {
      if (initial != null) {
        initial();
      } else if (orElse != null) {
        orElse(shopWatcherState);
      }
    } else if (shopWatcherState is ShopWatcherStateLoading) {
      if (loading != null) {
        loading();
      } else if (orElse != null) {
        orElse(shopWatcherState);
      }
    } else if (shopWatcherState is ShopWatcherStateLoaded) {
      if (loaded != null) {
        loaded(shopWatcherState.shops, shopWatcherState.location,
            shopWatcherState.radius);
      } else if (orElse != null) {
        orElse(shopWatcherState);
      }
    } else if (shopWatcherState is ShopWatcherStateError) {
      if (error != null) {
        error(shopWatcherState.failure);
      } else if (orElse != null) {
        orElse(shopWatcherState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(KtList<Shop> shops, Location location, double radius)? loaded,
    R Function(ShopFailure failure)? error,
    R Function(ShopWatcherState shopWatcherState)? orElse,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is ShopWatcherStateInitial) {
      return initial != null ? initial() : orElse?.call(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateLoading) {
      return loading != null ? loading() : orElse?.call(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateLoaded) {
      return loaded != null
          ? loaded(shopWatcherState.shops, shopWatcherState.location,
              shopWatcherState.radius)
          : orElse?.call(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateError) {
      return error != null
          ? error(shopWatcherState.failure)
          : orElse?.call(shopWatcherState);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ShopWatcherStateInitial initial) initial,
    required R Function(ShopWatcherStateLoading loading) loading,
    required R Function(ShopWatcherStateLoaded loaded) loaded,
    required R Function(ShopWatcherStateError error) error,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is ShopWatcherStateInitial) {
      return initial(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateLoading) {
      return loading(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateLoaded) {
      return loaded(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateError) {
      return error(shopWatcherState);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ShopWatcherStateInitial initial)? initial,
    R Function(ShopWatcherStateLoading loading)? loading,
    R Function(ShopWatcherStateLoaded loaded)? loaded,
    R Function(ShopWatcherStateError error)? error,
    required R Function(ShopWatcherState shopWatcherState) orElse,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is ShopWatcherStateInitial) {
      return initial != null
          ? initial(shopWatcherState)
          : orElse(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateLoading) {
      return loading != null
          ? loading(shopWatcherState)
          : orElse(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateLoaded) {
      return loaded != null
          ? loaded(shopWatcherState)
          : orElse(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateError) {
      return error != null ? error(shopWatcherState) : orElse(shopWatcherState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ShopWatcherStateInitial initial)? initial,
    void Function(ShopWatcherStateLoading loading)? loading,
    void Function(ShopWatcherStateLoaded loaded)? loaded,
    void Function(ShopWatcherStateError error)? error,
    void Function(ShopWatcherState shopWatcherState)? orElse,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is ShopWatcherStateInitial) {
      if (initial != null) {
        initial(shopWatcherState);
      } else if (orElse != null) {
        orElse(shopWatcherState);
      }
    } else if (shopWatcherState is ShopWatcherStateLoading) {
      if (loading != null) {
        loading(shopWatcherState);
      } else if (orElse != null) {
        orElse(shopWatcherState);
      }
    } else if (shopWatcherState is ShopWatcherStateLoaded) {
      if (loaded != null) {
        loaded(shopWatcherState);
      } else if (orElse != null) {
        orElse(shopWatcherState);
      }
    } else if (shopWatcherState is ShopWatcherStateError) {
      if (error != null) {
        error(shopWatcherState);
      } else if (orElse != null) {
        orElse(shopWatcherState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ShopWatcherStateInitial initial)? initial,
    R Function(ShopWatcherStateLoading loading)? loading,
    R Function(ShopWatcherStateLoaded loaded)? loaded,
    R Function(ShopWatcherStateError error)? error,
    R Function(ShopWatcherState shopWatcherState)? orElse,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is ShopWatcherStateInitial) {
      return initial != null
          ? initial(shopWatcherState)
          : orElse?.call(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateLoading) {
      return loading != null
          ? loading(shopWatcherState)
          : orElse?.call(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateLoaded) {
      return loaded != null
          ? loaded(shopWatcherState)
          : orElse?.call(shopWatcherState);
    } else if (shopWatcherState is ShopWatcherStateError) {
      return error != null
          ? error(shopWatcherState)
          : orElse?.call(shopWatcherState);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ShopWatcherStateInitial] : [ShopWatcherState]) initial){}
///
/// with data equality
class ShopWatcherStateInitial extends ShopWatcherState with EquatableMixin {
  const ShopWatcherStateInitial() : super._internal();

  @override
  String toString() => 'ShopWatcherState.initial()';

  @override
  List<Object?> get props => [];
}

/// (([ShopWatcherStateLoading] : [ShopWatcherState]) loading){}
///
/// with data equality
class ShopWatcherStateLoading extends ShopWatcherState with EquatableMixin {
  const ShopWatcherStateLoading() : super._internal();

  @override
  String toString() => 'ShopWatcherState.loading()';

  @override
  List<Object?> get props => [];
}

/// (([ShopWatcherStateLoaded] : [ShopWatcherState]) loaded){[KtList<Shop>] shops, [Location] location, [double] radius}
///
/// with data equality
class ShopWatcherStateLoaded extends ShopWatcherState with EquatableMixin {
  const ShopWatcherStateLoaded({
    required this.shops,
    required this.location,
    required this.radius,
  }) : super._internal();

  final KtList<Shop> shops;
  final Location location;
  final double radius;

  @override
  String toString() =>
      'ShopWatcherState.loaded(shops: $shops, location: $location, radius: $radius)';

  @override
  List<Object?> get props => [
        shops,
        location,
        radius,
      ];
}

/// (([ShopWatcherStateError] : [ShopWatcherState]) error){[ShopFailure] failure}
///
/// with data equality
class ShopWatcherStateError extends ShopWatcherState with EquatableMixin {
  const ShopWatcherStateError({
    required this.failure,
  }) : super._internal();

  final ShopFailure failure;

  @override
  String toString() => 'ShopWatcherState.error(failure: $failure)';

  @override
  List<Object?> get props => [
        failure,
      ];
}
