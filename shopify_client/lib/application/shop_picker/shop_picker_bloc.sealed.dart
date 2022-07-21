// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_picker_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [ShopPickerEvent] {
///
/// ([ShopPickerEventRadiusChanged] radiusChanged){[double] radius} with data equality
///
/// ([ShopPickerEventLocationChanged] locationChanged){[Location] location} with data equality
///
/// ([ShopPickerEventWatchNearbyShops] watchNearbyShops){} with data equality
///
/// }
@SealedManifest(_ShopPickerEvent)
abstract class ShopPickerEvent {
  const ShopPickerEvent._internal();

  const factory ShopPickerEvent.radiusChanged({
    required double radius,
  }) = ShopPickerEventRadiusChanged;

  const factory ShopPickerEvent.locationChanged({
    required Location location,
  }) = ShopPickerEventLocationChanged;

  const factory ShopPickerEvent.watchNearbyShops() =
      ShopPickerEventWatchNearbyShops;

  bool get isRadiusChanged => this is ShopPickerEventRadiusChanged;

  bool get isLocationChanged => this is ShopPickerEventLocationChanged;

  bool get isWatchNearbyShops => this is ShopPickerEventWatchNearbyShops;

  ShopPickerEventRadiusChanged get asRadiusChanged =>
      this as ShopPickerEventRadiusChanged;

  ShopPickerEventLocationChanged get asLocationChanged =>
      this as ShopPickerEventLocationChanged;

  ShopPickerEventWatchNearbyShops get asWatchNearbyShops =>
      this as ShopPickerEventWatchNearbyShops;

  ShopPickerEventRadiusChanged? get asRadiusChangedOrNull {
    final shopPickerEvent = this;
    return shopPickerEvent is ShopPickerEventRadiusChanged
        ? shopPickerEvent
        : null;
  }

  ShopPickerEventLocationChanged? get asLocationChangedOrNull {
    final shopPickerEvent = this;
    return shopPickerEvent is ShopPickerEventLocationChanged
        ? shopPickerEvent
        : null;
  }

  ShopPickerEventWatchNearbyShops? get asWatchNearbyShopsOrNull {
    final shopPickerEvent = this;
    return shopPickerEvent is ShopPickerEventWatchNearbyShops
        ? shopPickerEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(double radius) radiusChanged,
    required R Function(Location location) locationChanged,
    required R Function() watchNearbyShops,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged(shopPickerEvent.radius);
    } else if (shopPickerEvent is ShopPickerEventLocationChanged) {
      return locationChanged(shopPickerEvent.location);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(double radius)? radiusChanged,
    R Function(Location location)? locationChanged,
    R Function()? watchNearbyShops,
    required R Function(ShopPickerEvent shopPickerEvent) orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(shopPickerEvent.radius)
          : orElse(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventLocationChanged) {
      return locationChanged != null
          ? locationChanged(shopPickerEvent.location)
          : orElse(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops()
          : orElse(shopPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(double radius)? radiusChanged,
    void Function(Location location)? locationChanged,
    void Function()? watchNearbyShops,
    void Function(ShopPickerEvent shopPickerEvent)? orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      if (radiusChanged != null) {
        radiusChanged(shopPickerEvent.radius);
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else if (shopPickerEvent is ShopPickerEventLocationChanged) {
      if (locationChanged != null) {
        locationChanged(shopPickerEvent.location);
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      if (watchNearbyShops != null) {
        watchNearbyShops();
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(double radius)? radiusChanged,
    R Function(Location location)? locationChanged,
    R Function()? watchNearbyShops,
    R Function(ShopPickerEvent shopPickerEvent)? orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(shopPickerEvent.radius)
          : orElse?.call(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventLocationChanged) {
      return locationChanged != null
          ? locationChanged(shopPickerEvent.location)
          : orElse?.call(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops()
          : orElse?.call(shopPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ShopPickerEventRadiusChanged radiusChanged)
        radiusChanged,
    required R Function(ShopPickerEventLocationChanged locationChanged)
        locationChanged,
    required R Function(ShopPickerEventWatchNearbyShops watchNearbyShops)
        watchNearbyShops,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventLocationChanged) {
      return locationChanged(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops(shopPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ShopPickerEventRadiusChanged radiusChanged)? radiusChanged,
    R Function(ShopPickerEventLocationChanged locationChanged)? locationChanged,
    R Function(ShopPickerEventWatchNearbyShops watchNearbyShops)?
        watchNearbyShops,
    required R Function(ShopPickerEvent shopPickerEvent) orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(shopPickerEvent)
          : orElse(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventLocationChanged) {
      return locationChanged != null
          ? locationChanged(shopPickerEvent)
          : orElse(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops(shopPickerEvent)
          : orElse(shopPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ShopPickerEventRadiusChanged radiusChanged)? radiusChanged,
    void Function(ShopPickerEventLocationChanged locationChanged)?
        locationChanged,
    void Function(ShopPickerEventWatchNearbyShops watchNearbyShops)?
        watchNearbyShops,
    void Function(ShopPickerEvent shopPickerEvent)? orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      if (radiusChanged != null) {
        radiusChanged(shopPickerEvent);
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else if (shopPickerEvent is ShopPickerEventLocationChanged) {
      if (locationChanged != null) {
        locationChanged(shopPickerEvent);
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      if (watchNearbyShops != null) {
        watchNearbyShops(shopPickerEvent);
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ShopPickerEventRadiusChanged radiusChanged)? radiusChanged,
    R Function(ShopPickerEventLocationChanged locationChanged)? locationChanged,
    R Function(ShopPickerEventWatchNearbyShops watchNearbyShops)?
        watchNearbyShops,
    R Function(ShopPickerEvent shopPickerEvent)? orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(shopPickerEvent)
          : orElse?.call(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventLocationChanged) {
      return locationChanged != null
          ? locationChanged(shopPickerEvent)
          : orElse?.call(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops(shopPickerEvent)
          : orElse?.call(shopPickerEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ShopPickerEventRadiusChanged] : [ShopPickerEvent]) radiusChanged){[double] radius}
///
/// with data equality
class ShopPickerEventRadiusChanged extends ShopPickerEvent with EquatableMixin {
  const ShopPickerEventRadiusChanged({
    required this.radius,
  }) : super._internal();

  final double radius;

  @override
  String toString() => 'ShopPickerEvent.radiusChanged(radius: $radius)';

  @override
  List<Object?> get props => [
        radius,
      ];
}

/// (([ShopPickerEventLocationChanged] : [ShopPickerEvent]) locationChanged){[Location] location}
///
/// with data equality
class ShopPickerEventLocationChanged extends ShopPickerEvent
    with EquatableMixin {
  const ShopPickerEventLocationChanged({
    required this.location,
  }) : super._internal();

  final Location location;

  @override
  String toString() => 'ShopPickerEvent.locationChanged(location: $location)';

  @override
  List<Object?> get props => [
        location,
      ];
}

/// (([ShopPickerEventWatchNearbyShops] : [ShopPickerEvent]) watchNearbyShops){}
///
/// with data equality
class ShopPickerEventWatchNearbyShops extends ShopPickerEvent
    with EquatableMixin {
  const ShopPickerEventWatchNearbyShops() : super._internal();

  @override
  String toString() => 'ShopPickerEvent.watchNearbyShops()';

  @override
  List<Object?> get props => [];
}
