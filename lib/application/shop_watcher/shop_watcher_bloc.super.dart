// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_watcher_bloc.dart';

// **************************************************************************
// Generator: super_enum_sealed_generators
// **************************************************************************

// ignore_for_file: unused_element, unused_field

// Migration guide for ShopWatcherEvent:
// For migration to dart_sealed, uncomment
// following generated manifest code, then
// replace it with your super_enum manifest
// then add dependencies to sealed_annotations
// and sealed_generators, then import
// sealed_annotations instead of
// super_enum_sealed_annotations, then change
// part file name from *.super.dart to
// *.sealed.dart, then rerun the build_runner.
// When you are done with migrating all sealed
// classes to dart_sealed, you can remove
// super_enum_sealed_annotations and
// super_enum_sealed_generators dependencies.
//
// @Sealed()
// abstract class _ShopWatcherEvent
// {
// @WithEquality(Equality.data)
// @WithName('WatchNearbyShops')
// void watchNearbyShops(int radius, Location location);
// }

/// [ShopWatcherEvent] {
///
/// ([WatchNearbyShops] watchNearbyShops){[int] radius, [Location] location} with data equality
///
/// }
@immutable
abstract class ShopWatcherEvent {
  const ShopWatcherEvent._internal();

  const factory ShopWatcherEvent.watchNearbyShops({
    required int radius,
    required Location location,
  }) = WatchNearbyShops;

  bool isWatchNearbyShops() => this is WatchNearbyShops;

  WatchNearbyShops asWatchNearbyShops() => this as WatchNearbyShops;

  WatchNearbyShops? asWatchNearbyShopsOrNull() {
    final shopWatcherEvent = this;
    return shopWatcherEvent is WatchNearbyShops ? shopWatcherEvent : null;
  }

  R when<R extends Object?>({
    required R Function(WatchNearbyShops watchNearbyShops) watchNearbyShops,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is WatchNearbyShops) {
      return watchNearbyShops(shopWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function(WatchNearbyShops watchNearbyShops)? watchNearbyShops,
    required R Function(ShopWatcherEvent shopWatcherEvent) orElse,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is WatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops(shopWatcherEvent)
          : orElse(shopWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function(WatchNearbyShops watchNearbyShops)? watchNearbyShops,
    required R orDefault,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is WatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops(shopWatcherEvent)
          : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(WatchNearbyShops watchNearbyShops)? watchNearbyShops,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is WatchNearbyShops) {
      return watchNearbyShops?.call(shopWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function(WatchNearbyShops watchNearbyShops)? watchNearbyShops,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is WatchNearbyShops && watchNearbyShops != null) {
      return watchNearbyShops(shopWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function(WatchNearbyShops watchNearbyShops)? watchNearbyShops,
  }) {
    final shopWatcherEvent = this;
    if (shopWatcherEvent is WatchNearbyShops) {
      watchNearbyShops?.call(shopWatcherEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([WatchNearbyShops] : [ShopWatcherEvent]) watchNearbyShops){[int] radius, [Location] location}
///
/// with data equality
@immutable
class WatchNearbyShops extends ShopWatcherEvent with EquatableMixin {
  const WatchNearbyShops({
    required this.radius,
    required this.location,
  }) : super._internal();

  final int radius;
  final Location location;

  @override
  String toString() =>
      'ShopWatcherEvent.watchNearbyShops(radius: $radius, location: $location)';

  @override
  List<Object?> get props => [
        radius,
        location,
      ];
}

// ignore_for_file: unused_element, unused_field

// Migration guide for ShopWatcherState:
// For migration to dart_sealed, uncomment
// following generated manifest code, then
// replace it with your super_enum manifest
// then add dependencies to sealed_annotations
// and sealed_generators, then import
// sealed_annotations instead of
// super_enum_sealed_annotations, then change
// part file name from *.super.dart to
// *.sealed.dart, then rerun the build_runner.
// When you are done with migrating all sealed
// classes to dart_sealed, you can remove
// super_enum_sealed_annotations and
// super_enum_sealed_generators dependencies.
//
// @Sealed()
// abstract class _ShopWatcherState
// {
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Initial')
// void initial();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Loading')
// void loading();
//
// @WithEquality(Equality.data)
// @WithName('Loaded')
// void loaded(KtList<Shop> shops);
//
// @WithEquality(Equality.data)
// @WithName('Error')
// void error(ShopFailure failure);
// }

/// [ShopWatcherState] {
///
/// ([Initial] initial){} with data equality with wrap
///
/// ([Loading] loading){} with data equality with wrap
///
/// ([Loaded] loaded){[KtList<Shop>] shops} with data equality
///
/// ([Error] error){[ShopFailure] failure} with data equality
///
/// }
@immutable
abstract class ShopWatcherState {
  const ShopWatcherState._internal();

  const factory ShopWatcherState.initial() = Initial;

  const factory ShopWatcherState.loading() = Loading;

  const factory ShopWatcherState.loaded({
    required KtList<Shop> shops,
  }) = Loaded;

  const factory ShopWatcherState.error({
    required ShopFailure failure,
  }) = Error;

  bool isInitial() => this is Initial;

  bool isLoading() => this is Loading;

  bool isLoaded() => this is Loaded;

  bool isError() => this is Error;

  Initial asInitial() => this as Initial;

  Loading asLoading() => this as Loading;

  Loaded asLoaded() => this as Loaded;

  Error asError() => this as Error;

  Initial? asInitialOrNull() {
    final shopWatcherState = this;
    return shopWatcherState is Initial ? shopWatcherState : null;
  }

  Loading? asLoadingOrNull() {
    final shopWatcherState = this;
    return shopWatcherState is Loading ? shopWatcherState : null;
  }

  Loaded? asLoadedOrNull() {
    final shopWatcherState = this;
    return shopWatcherState is Loaded ? shopWatcherState : null;
  }

  Error? asErrorOrNull() {
    final shopWatcherState = this;
    return shopWatcherState is Error ? shopWatcherState : null;
  }

  R when<R extends Object?>({
    required R Function() initial,
    required R Function() loading,
    required R Function(Loaded loaded) loaded,
    required R Function(Error error) error,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is Initial) {
      return initial();
    } else if (shopWatcherState is Loading) {
      return loading();
    } else if (shopWatcherState is Loaded) {
      return loaded(shopWatcherState);
    } else if (shopWatcherState is Error) {
      return error(shopWatcherState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
    required R Function(ShopWatcherState shopWatcherState) orElse,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is Initial) {
      return initial != null ? initial() : orElse(shopWatcherState);
    } else if (shopWatcherState is Loading) {
      return loading != null ? loading() : orElse(shopWatcherState);
    } else if (shopWatcherState is Loaded) {
      return loaded != null
          ? loaded(shopWatcherState)
          : orElse(shopWatcherState);
    } else if (shopWatcherState is Error) {
      return error != null ? error(shopWatcherState) : orElse(shopWatcherState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
    required R orDefault,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is Initial) {
      return initial != null ? initial() : orDefault;
    } else if (shopWatcherState is Loading) {
      return loading != null ? loading() : orDefault;
    } else if (shopWatcherState is Loaded) {
      return loaded != null ? loaded(shopWatcherState) : orDefault;
    } else if (shopWatcherState is Error) {
      return error != null ? error(shopWatcherState) : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is Initial) {
      return initial?.call();
    } else if (shopWatcherState is Loading) {
      return loading?.call();
    } else if (shopWatcherState is Loaded) {
      return loaded?.call(shopWatcherState);
    } else if (shopWatcherState is Error) {
      return error?.call(shopWatcherState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is Initial && initial != null) {
      return initial();
    } else if (shopWatcherState is Loading && loading != null) {
      return loading();
    } else if (shopWatcherState is Loaded && loaded != null) {
      return loaded(shopWatcherState);
    } else if (shopWatcherState is Error && error != null) {
      return error(shopWatcherState);
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function()? initial,
    void Function()? loading,
    void Function(Loaded loaded)? loaded,
    void Function(Error error)? error,
  }) {
    final shopWatcherState = this;
    if (shopWatcherState is Initial) {
      initial?.call();
    } else if (shopWatcherState is Loading) {
      loading?.call();
    } else if (shopWatcherState is Loaded) {
      loaded?.call(shopWatcherState);
    } else if (shopWatcherState is Error) {
      error?.call(shopWatcherState);
    } else {
      throw AssertionError();
    }
  }
}

/// (([Initial] : [ShopWatcherState]) initial){}
///
/// with data equality
///
/// with wrap
@immutable
class Initial extends ShopWatcherState with EquatableMixin {
  const Initial() : super._internal();

  @override
  String toString() => 'ShopWatcherState.initial()';

  @override
  List<Object?> get props => [];
}

/// (([Loading] : [ShopWatcherState]) loading){}
///
/// with data equality
///
/// with wrap
@immutable
class Loading extends ShopWatcherState with EquatableMixin {
  const Loading() : super._internal();

  @override
  String toString() => 'ShopWatcherState.loading()';

  @override
  List<Object?> get props => [];
}

/// (([Loaded] : [ShopWatcherState]) loaded){[KtList<Shop>] shops}
///
/// with data equality
@immutable
class Loaded extends ShopWatcherState with EquatableMixin {
  const Loaded({
    required this.shops,
  }) : super._internal();

  final KtList<Shop> shops;

  @override
  String toString() => 'ShopWatcherState.loaded(shops: $shops)';

  @override
  List<Object?> get props => [
        shops,
      ];
}

/// (([Error] : [ShopWatcherState]) error){[ShopFailure] failure}
///
/// with data equality
@immutable
class Error extends ShopWatcherState with EquatableMixin {
  const Error({
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
