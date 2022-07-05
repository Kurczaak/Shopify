// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_picker_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [ShopPickerEvent] {
///
/// ([ShopPickerEventRadiusChanged] radiusChanged){[double] radius} with data equality
///
/// ([ShopPickerEventWatchNearbyShops] watchNearbyShops){} with data equality
///
/// ([ShopPickerEventSearchLocation] searchLocation){[String] stringLocation} with data equality
///
/// ([ShopPickerEventGetYourLocation] getYourLocation){} with data equality
///
/// }
@SealedManifest(_ShopPickerEvent)
abstract class ShopPickerEvent {
  const ShopPickerEvent._internal();

  const factory ShopPickerEvent.radiusChanged({
    required double radius,
  }) = ShopPickerEventRadiusChanged;

  const factory ShopPickerEvent.watchNearbyShops() =
      ShopPickerEventWatchNearbyShops;

  const factory ShopPickerEvent.searchLocation({
    required String stringLocation,
  }) = ShopPickerEventSearchLocation;

  const factory ShopPickerEvent.getYourLocation() =
      ShopPickerEventGetYourLocation;

  bool get isRadiusChanged => this is ShopPickerEventRadiusChanged;

  bool get isWatchNearbyShops => this is ShopPickerEventWatchNearbyShops;

  bool get isSearchLocation => this is ShopPickerEventSearchLocation;

  bool get isGetYourLocation => this is ShopPickerEventGetYourLocation;

  ShopPickerEventRadiusChanged get asRadiusChanged =>
      this as ShopPickerEventRadiusChanged;

  ShopPickerEventWatchNearbyShops get asWatchNearbyShops =>
      this as ShopPickerEventWatchNearbyShops;

  ShopPickerEventSearchLocation get asSearchLocation =>
      this as ShopPickerEventSearchLocation;

  ShopPickerEventGetYourLocation get asGetYourLocation =>
      this as ShopPickerEventGetYourLocation;

  ShopPickerEventRadiusChanged? get asRadiusChangedOrNull {
    final shopPickerEvent = this;
    return shopPickerEvent is ShopPickerEventRadiusChanged
        ? shopPickerEvent
        : null;
  }

  ShopPickerEventWatchNearbyShops? get asWatchNearbyShopsOrNull {
    final shopPickerEvent = this;
    return shopPickerEvent is ShopPickerEventWatchNearbyShops
        ? shopPickerEvent
        : null;
  }

  ShopPickerEventSearchLocation? get asSearchLocationOrNull {
    final shopPickerEvent = this;
    return shopPickerEvent is ShopPickerEventSearchLocation
        ? shopPickerEvent
        : null;
  }

  ShopPickerEventGetYourLocation? get asGetYourLocationOrNull {
    final shopPickerEvent = this;
    return shopPickerEvent is ShopPickerEventGetYourLocation
        ? shopPickerEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(double radius) radiusChanged,
    required R Function() watchNearbyShops,
    required R Function(String stringLocation) searchLocation,
    required R Function() getYourLocation,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged(shopPickerEvent.radius);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops();
    } else if (shopPickerEvent is ShopPickerEventSearchLocation) {
      return searchLocation(shopPickerEvent.stringLocation);
    } else if (shopPickerEvent is ShopPickerEventGetYourLocation) {
      return getYourLocation();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(double radius)? radiusChanged,
    R Function()? watchNearbyShops,
    R Function(String stringLocation)? searchLocation,
    R Function()? getYourLocation,
    required R Function(ShopPickerEvent shopPickerEvent) orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(shopPickerEvent.radius)
          : orElse(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops()
          : orElse(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventSearchLocation) {
      return searchLocation != null
          ? searchLocation(shopPickerEvent.stringLocation)
          : orElse(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventGetYourLocation) {
      return getYourLocation != null
          ? getYourLocation()
          : orElse(shopPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(double radius)? radiusChanged,
    void Function()? watchNearbyShops,
    void Function(String stringLocation)? searchLocation,
    void Function()? getYourLocation,
    void Function(ShopPickerEvent shopPickerEvent)? orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      if (radiusChanged != null) {
        radiusChanged(shopPickerEvent.radius);
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      if (watchNearbyShops != null) {
        watchNearbyShops();
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else if (shopPickerEvent is ShopPickerEventSearchLocation) {
      if (searchLocation != null) {
        searchLocation(shopPickerEvent.stringLocation);
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else if (shopPickerEvent is ShopPickerEventGetYourLocation) {
      if (getYourLocation != null) {
        getYourLocation();
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(double radius)? radiusChanged,
    R Function()? watchNearbyShops,
    R Function(String stringLocation)? searchLocation,
    R Function()? getYourLocation,
    R Function(ShopPickerEvent shopPickerEvent)? orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(shopPickerEvent.radius)
          : orElse?.call(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops()
          : orElse?.call(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventSearchLocation) {
      return searchLocation != null
          ? searchLocation(shopPickerEvent.stringLocation)
          : orElse?.call(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventGetYourLocation) {
      return getYourLocation != null
          ? getYourLocation()
          : orElse?.call(shopPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ShopPickerEventRadiusChanged radiusChanged)
        radiusChanged,
    required R Function(ShopPickerEventWatchNearbyShops watchNearbyShops)
        watchNearbyShops,
    required R Function(ShopPickerEventSearchLocation searchLocation)
        searchLocation,
    required R Function(ShopPickerEventGetYourLocation getYourLocation)
        getYourLocation,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventSearchLocation) {
      return searchLocation(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventGetYourLocation) {
      return getYourLocation(shopPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ShopPickerEventRadiusChanged radiusChanged)? radiusChanged,
    R Function(ShopPickerEventWatchNearbyShops watchNearbyShops)?
        watchNearbyShops,
    R Function(ShopPickerEventSearchLocation searchLocation)? searchLocation,
    R Function(ShopPickerEventGetYourLocation getYourLocation)? getYourLocation,
    required R Function(ShopPickerEvent shopPickerEvent) orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(shopPickerEvent)
          : orElse(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops(shopPickerEvent)
          : orElse(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventSearchLocation) {
      return searchLocation != null
          ? searchLocation(shopPickerEvent)
          : orElse(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventGetYourLocation) {
      return getYourLocation != null
          ? getYourLocation(shopPickerEvent)
          : orElse(shopPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ShopPickerEventRadiusChanged radiusChanged)? radiusChanged,
    void Function(ShopPickerEventWatchNearbyShops watchNearbyShops)?
        watchNearbyShops,
    void Function(ShopPickerEventSearchLocation searchLocation)? searchLocation,
    void Function(ShopPickerEventGetYourLocation getYourLocation)?
        getYourLocation,
    void Function(ShopPickerEvent shopPickerEvent)? orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      if (radiusChanged != null) {
        radiusChanged(shopPickerEvent);
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      if (watchNearbyShops != null) {
        watchNearbyShops(shopPickerEvent);
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else if (shopPickerEvent is ShopPickerEventSearchLocation) {
      if (searchLocation != null) {
        searchLocation(shopPickerEvent);
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else if (shopPickerEvent is ShopPickerEventGetYourLocation) {
      if (getYourLocation != null) {
        getYourLocation(shopPickerEvent);
      } else if (orElse != null) {
        orElse(shopPickerEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ShopPickerEventRadiusChanged radiusChanged)? radiusChanged,
    R Function(ShopPickerEventWatchNearbyShops watchNearbyShops)?
        watchNearbyShops,
    R Function(ShopPickerEventSearchLocation searchLocation)? searchLocation,
    R Function(ShopPickerEventGetYourLocation getYourLocation)? getYourLocation,
    R Function(ShopPickerEvent shopPickerEvent)? orElse,
  }) {
    final shopPickerEvent = this;
    if (shopPickerEvent is ShopPickerEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(shopPickerEvent)
          : orElse?.call(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventWatchNearbyShops) {
      return watchNearbyShops != null
          ? watchNearbyShops(shopPickerEvent)
          : orElse?.call(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventSearchLocation) {
      return searchLocation != null
          ? searchLocation(shopPickerEvent)
          : orElse?.call(shopPickerEvent);
    } else if (shopPickerEvent is ShopPickerEventGetYourLocation) {
      return getYourLocation != null
          ? getYourLocation(shopPickerEvent)
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

/// (([ShopPickerEventSearchLocation] : [ShopPickerEvent]) searchLocation){[String] stringLocation}
///
/// with data equality
class ShopPickerEventSearchLocation extends ShopPickerEvent
    with EquatableMixin {
  const ShopPickerEventSearchLocation({
    required this.stringLocation,
  }) : super._internal();

  final String stringLocation;

  @override
  String toString() =>
      'ShopPickerEvent.searchLocation(stringLocation: $stringLocation)';

  @override
  List<Object?> get props => [
        stringLocation,
      ];
}

/// (([ShopPickerEventGetYourLocation] : [ShopPickerEvent]) getYourLocation){}
///
/// with data equality
class ShopPickerEventGetYourLocation extends ShopPickerEvent
    with EquatableMixin {
  const ShopPickerEventGetYourLocation() : super._internal();

  @override
  String toString() => 'ShopPickerEvent.getYourLocation()';

  @override
  List<Object?> get props => [];
}
