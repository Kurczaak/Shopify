// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [LocationEvent] {
///
/// ([LocationEventRadiusChanged] radiusChanged){[double] radius} with data equality
///
/// ([LocationEventSearchLocation] searchLocation){[String] stringLocation} with data equality
///
/// ([LocationEventGetYourLocation] getYourLocation){} with data equality
///
/// }
@SealedManifest(_LocationEvent)
abstract class LocationEvent {
  const LocationEvent._internal();

  const factory LocationEvent.radiusChanged({
    required double radius,
  }) = LocationEventRadiusChanged;

  const factory LocationEvent.searchLocation({
    required String stringLocation,
  }) = LocationEventSearchLocation;

  const factory LocationEvent.getYourLocation() = LocationEventGetYourLocation;

  bool get isRadiusChanged => this is LocationEventRadiusChanged;

  bool get isSearchLocation => this is LocationEventSearchLocation;

  bool get isGetYourLocation => this is LocationEventGetYourLocation;

  LocationEventRadiusChanged get asRadiusChanged =>
      this as LocationEventRadiusChanged;

  LocationEventSearchLocation get asSearchLocation =>
      this as LocationEventSearchLocation;

  LocationEventGetYourLocation get asGetYourLocation =>
      this as LocationEventGetYourLocation;

  LocationEventRadiusChanged? get asRadiusChangedOrNull {
    final locationEvent = this;
    return locationEvent is LocationEventRadiusChanged ? locationEvent : null;
  }

  LocationEventSearchLocation? get asSearchLocationOrNull {
    final locationEvent = this;
    return locationEvent is LocationEventSearchLocation ? locationEvent : null;
  }

  LocationEventGetYourLocation? get asGetYourLocationOrNull {
    final locationEvent = this;
    return locationEvent is LocationEventGetYourLocation ? locationEvent : null;
  }

  R when<R extends Object?>({
    required R Function(double radius) radiusChanged,
    required R Function(String stringLocation) searchLocation,
    required R Function() getYourLocation,
  }) {
    final locationEvent = this;
    if (locationEvent is LocationEventRadiusChanged) {
      return radiusChanged(locationEvent.radius);
    } else if (locationEvent is LocationEventSearchLocation) {
      return searchLocation(locationEvent.stringLocation);
    } else if (locationEvent is LocationEventGetYourLocation) {
      return getYourLocation();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(double radius)? radiusChanged,
    R Function(String stringLocation)? searchLocation,
    R Function()? getYourLocation,
    required R Function(LocationEvent locationEvent) orElse,
  }) {
    final locationEvent = this;
    if (locationEvent is LocationEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(locationEvent.radius)
          : orElse(locationEvent);
    } else if (locationEvent is LocationEventSearchLocation) {
      return searchLocation != null
          ? searchLocation(locationEvent.stringLocation)
          : orElse(locationEvent);
    } else if (locationEvent is LocationEventGetYourLocation) {
      return getYourLocation != null
          ? getYourLocation()
          : orElse(locationEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(double radius)? radiusChanged,
    void Function(String stringLocation)? searchLocation,
    void Function()? getYourLocation,
    void Function(LocationEvent locationEvent)? orElse,
  }) {
    final locationEvent = this;
    if (locationEvent is LocationEventRadiusChanged) {
      if (radiusChanged != null) {
        radiusChanged(locationEvent.radius);
      } else if (orElse != null) {
        orElse(locationEvent);
      }
    } else if (locationEvent is LocationEventSearchLocation) {
      if (searchLocation != null) {
        searchLocation(locationEvent.stringLocation);
      } else if (orElse != null) {
        orElse(locationEvent);
      }
    } else if (locationEvent is LocationEventGetYourLocation) {
      if (getYourLocation != null) {
        getYourLocation();
      } else if (orElse != null) {
        orElse(locationEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(double radius)? radiusChanged,
    R Function(String stringLocation)? searchLocation,
    R Function()? getYourLocation,
    R Function(LocationEvent locationEvent)? orElse,
  }) {
    final locationEvent = this;
    if (locationEvent is LocationEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(locationEvent.radius)
          : orElse?.call(locationEvent);
    } else if (locationEvent is LocationEventSearchLocation) {
      return searchLocation != null
          ? searchLocation(locationEvent.stringLocation)
          : orElse?.call(locationEvent);
    } else if (locationEvent is LocationEventGetYourLocation) {
      return getYourLocation != null
          ? getYourLocation()
          : orElse?.call(locationEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(LocationEventRadiusChanged radiusChanged) radiusChanged,
    required R Function(LocationEventSearchLocation searchLocation)
        searchLocation,
    required R Function(LocationEventGetYourLocation getYourLocation)
        getYourLocation,
  }) {
    final locationEvent = this;
    if (locationEvent is LocationEventRadiusChanged) {
      return radiusChanged(locationEvent);
    } else if (locationEvent is LocationEventSearchLocation) {
      return searchLocation(locationEvent);
    } else if (locationEvent is LocationEventGetYourLocation) {
      return getYourLocation(locationEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(LocationEventRadiusChanged radiusChanged)? radiusChanged,
    R Function(LocationEventSearchLocation searchLocation)? searchLocation,
    R Function(LocationEventGetYourLocation getYourLocation)? getYourLocation,
    required R Function(LocationEvent locationEvent) orElse,
  }) {
    final locationEvent = this;
    if (locationEvent is LocationEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(locationEvent)
          : orElse(locationEvent);
    } else if (locationEvent is LocationEventSearchLocation) {
      return searchLocation != null
          ? searchLocation(locationEvent)
          : orElse(locationEvent);
    } else if (locationEvent is LocationEventGetYourLocation) {
      return getYourLocation != null
          ? getYourLocation(locationEvent)
          : orElse(locationEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(LocationEventRadiusChanged radiusChanged)? radiusChanged,
    void Function(LocationEventSearchLocation searchLocation)? searchLocation,
    void Function(LocationEventGetYourLocation getYourLocation)?
        getYourLocation,
    void Function(LocationEvent locationEvent)? orElse,
  }) {
    final locationEvent = this;
    if (locationEvent is LocationEventRadiusChanged) {
      if (radiusChanged != null) {
        radiusChanged(locationEvent);
      } else if (orElse != null) {
        orElse(locationEvent);
      }
    } else if (locationEvent is LocationEventSearchLocation) {
      if (searchLocation != null) {
        searchLocation(locationEvent);
      } else if (orElse != null) {
        orElse(locationEvent);
      }
    } else if (locationEvent is LocationEventGetYourLocation) {
      if (getYourLocation != null) {
        getYourLocation(locationEvent);
      } else if (orElse != null) {
        orElse(locationEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(LocationEventRadiusChanged radiusChanged)? radiusChanged,
    R Function(LocationEventSearchLocation searchLocation)? searchLocation,
    R Function(LocationEventGetYourLocation getYourLocation)? getYourLocation,
    R Function(LocationEvent locationEvent)? orElse,
  }) {
    final locationEvent = this;
    if (locationEvent is LocationEventRadiusChanged) {
      return radiusChanged != null
          ? radiusChanged(locationEvent)
          : orElse?.call(locationEvent);
    } else if (locationEvent is LocationEventSearchLocation) {
      return searchLocation != null
          ? searchLocation(locationEvent)
          : orElse?.call(locationEvent);
    } else if (locationEvent is LocationEventGetYourLocation) {
      return getYourLocation != null
          ? getYourLocation(locationEvent)
          : orElse?.call(locationEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([LocationEventRadiusChanged] : [LocationEvent]) radiusChanged){[double] radius}
///
/// with data equality
class LocationEventRadiusChanged extends LocationEvent with EquatableMixin {
  const LocationEventRadiusChanged({
    required this.radius,
  }) : super._internal();

  final double radius;

  @override
  String toString() => 'LocationEvent.radiusChanged(radius: $radius)';

  @override
  List<Object?> get props => [
        radius,
      ];
}

/// (([LocationEventSearchLocation] : [LocationEvent]) searchLocation){[String] stringLocation}
///
/// with data equality
class LocationEventSearchLocation extends LocationEvent with EquatableMixin {
  const LocationEventSearchLocation({
    required this.stringLocation,
  }) : super._internal();

  final String stringLocation;

  @override
  String toString() =>
      'LocationEvent.searchLocation(stringLocation: $stringLocation)';

  @override
  List<Object?> get props => [
        stringLocation,
      ];
}

/// (([LocationEventGetYourLocation] : [LocationEvent]) getYourLocation){}
///
/// with data equality
class LocationEventGetYourLocation extends LocationEvent with EquatableMixin {
  const LocationEventGetYourLocation() : super._internal();

  @override
  String toString() => 'LocationEvent.getYourLocation()';

  @override
  List<Object?> get props => [];
}
