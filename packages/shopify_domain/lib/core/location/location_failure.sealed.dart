// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_failure.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [LocationFailure] {
///
/// ([LocationFailureUnexpected] unexpected){} with data equality
///
/// ([LocationFailureNoLocationFound] noLocationFound){} with data equality
///
/// ([LocationFailureTimeout] timeout){} with data equality
///
/// ([LocationFailurePermissionDenied] permissionDenied){} with data equality
///
/// ([LocationFailureNoInternetConnection] noInternetConnection){} with data equality
///
/// }
@SealedManifest(_LocationFailure)
abstract class LocationFailure {
  const LocationFailure._internal();

  const factory LocationFailure.unexpected() = LocationFailureUnexpected;

  const factory LocationFailure.noLocationFound() =
      LocationFailureNoLocationFound;

  const factory LocationFailure.timeout() = LocationFailureTimeout;

  const factory LocationFailure.permissionDenied() =
      LocationFailurePermissionDenied;

  const factory LocationFailure.noInternetConnection() =
      LocationFailureNoInternetConnection;

  bool get isUnexpected => this is LocationFailureUnexpected;

  bool get isNoLocationFound => this is LocationFailureNoLocationFound;

  bool get isTimeout => this is LocationFailureTimeout;

  bool get isPermissionDenied => this is LocationFailurePermissionDenied;

  bool get isNoInternetConnection =>
      this is LocationFailureNoInternetConnection;

  LocationFailureUnexpected get asUnexpected =>
      this as LocationFailureUnexpected;

  LocationFailureNoLocationFound get asNoLocationFound =>
      this as LocationFailureNoLocationFound;

  LocationFailureTimeout get asTimeout => this as LocationFailureTimeout;

  LocationFailurePermissionDenied get asPermissionDenied =>
      this as LocationFailurePermissionDenied;

  LocationFailureNoInternetConnection get asNoInternetConnection =>
      this as LocationFailureNoInternetConnection;

  LocationFailureUnexpected? get asUnexpectedOrNull {
    final locationFailure = this;
    return locationFailure is LocationFailureUnexpected
        ? locationFailure
        : null;
  }

  LocationFailureNoLocationFound? get asNoLocationFoundOrNull {
    final locationFailure = this;
    return locationFailure is LocationFailureNoLocationFound
        ? locationFailure
        : null;
  }

  LocationFailureTimeout? get asTimeoutOrNull {
    final locationFailure = this;
    return locationFailure is LocationFailureTimeout ? locationFailure : null;
  }

  LocationFailurePermissionDenied? get asPermissionDeniedOrNull {
    final locationFailure = this;
    return locationFailure is LocationFailurePermissionDenied
        ? locationFailure
        : null;
  }

  LocationFailureNoInternetConnection? get asNoInternetConnectionOrNull {
    final locationFailure = this;
    return locationFailure is LocationFailureNoInternetConnection
        ? locationFailure
        : null;
  }

  R when<R extends Object?>({
    required R Function() unexpected,
    required R Function() noLocationFound,
    required R Function() timeout,
    required R Function() permissionDenied,
    required R Function() noInternetConnection,
  }) {
    final locationFailure = this;
    if (locationFailure is LocationFailureUnexpected) {
      return unexpected();
    } else if (locationFailure is LocationFailureNoLocationFound) {
      return noLocationFound();
    } else if (locationFailure is LocationFailureTimeout) {
      return timeout();
    } else if (locationFailure is LocationFailurePermissionDenied) {
      return permissionDenied();
    } else if (locationFailure is LocationFailureNoInternetConnection) {
      return noInternetConnection();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? unexpected,
    R Function()? noLocationFound,
    R Function()? timeout,
    R Function()? permissionDenied,
    R Function()? noInternetConnection,
    required R Function(LocationFailure locationFailure) orElse,
  }) {
    final locationFailure = this;
    if (locationFailure is LocationFailureUnexpected) {
      return unexpected != null ? unexpected() : orElse(locationFailure);
    } else if (locationFailure is LocationFailureNoLocationFound) {
      return noLocationFound != null
          ? noLocationFound()
          : orElse(locationFailure);
    } else if (locationFailure is LocationFailureTimeout) {
      return timeout != null ? timeout() : orElse(locationFailure);
    } else if (locationFailure is LocationFailurePermissionDenied) {
      return permissionDenied != null
          ? permissionDenied()
          : orElse(locationFailure);
    } else if (locationFailure is LocationFailureNoInternetConnection) {
      return noInternetConnection != null
          ? noInternetConnection()
          : orElse(locationFailure);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? unexpected,
    void Function()? noLocationFound,
    void Function()? timeout,
    void Function()? permissionDenied,
    void Function()? noInternetConnection,
    void Function(LocationFailure locationFailure)? orElse,
  }) {
    final locationFailure = this;
    if (locationFailure is LocationFailureUnexpected) {
      if (unexpected != null) {
        unexpected();
      } else if (orElse != null) {
        orElse(locationFailure);
      }
    } else if (locationFailure is LocationFailureNoLocationFound) {
      if (noLocationFound != null) {
        noLocationFound();
      } else if (orElse != null) {
        orElse(locationFailure);
      }
    } else if (locationFailure is LocationFailureTimeout) {
      if (timeout != null) {
        timeout();
      } else if (orElse != null) {
        orElse(locationFailure);
      }
    } else if (locationFailure is LocationFailurePermissionDenied) {
      if (permissionDenied != null) {
        permissionDenied();
      } else if (orElse != null) {
        orElse(locationFailure);
      }
    } else if (locationFailure is LocationFailureNoInternetConnection) {
      if (noInternetConnection != null) {
        noInternetConnection();
      } else if (orElse != null) {
        orElse(locationFailure);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? unexpected,
    R Function()? noLocationFound,
    R Function()? timeout,
    R Function()? permissionDenied,
    R Function()? noInternetConnection,
    R Function(LocationFailure locationFailure)? orElse,
  }) {
    final locationFailure = this;
    if (locationFailure is LocationFailureUnexpected) {
      return unexpected != null ? unexpected() : orElse?.call(locationFailure);
    } else if (locationFailure is LocationFailureNoLocationFound) {
      return noLocationFound != null
          ? noLocationFound()
          : orElse?.call(locationFailure);
    } else if (locationFailure is LocationFailureTimeout) {
      return timeout != null ? timeout() : orElse?.call(locationFailure);
    } else if (locationFailure is LocationFailurePermissionDenied) {
      return permissionDenied != null
          ? permissionDenied()
          : orElse?.call(locationFailure);
    } else if (locationFailure is LocationFailureNoInternetConnection) {
      return noInternetConnection != null
          ? noInternetConnection()
          : orElse?.call(locationFailure);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(LocationFailureUnexpected unexpected) unexpected,
    required R Function(LocationFailureNoLocationFound noLocationFound)
        noLocationFound,
    required R Function(LocationFailureTimeout timeout) timeout,
    required R Function(LocationFailurePermissionDenied permissionDenied)
        permissionDenied,
    required R Function(
            LocationFailureNoInternetConnection noInternetConnection)
        noInternetConnection,
  }) {
    final locationFailure = this;
    if (locationFailure is LocationFailureUnexpected) {
      return unexpected(locationFailure);
    } else if (locationFailure is LocationFailureNoLocationFound) {
      return noLocationFound(locationFailure);
    } else if (locationFailure is LocationFailureTimeout) {
      return timeout(locationFailure);
    } else if (locationFailure is LocationFailurePermissionDenied) {
      return permissionDenied(locationFailure);
    } else if (locationFailure is LocationFailureNoInternetConnection) {
      return noInternetConnection(locationFailure);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(LocationFailureUnexpected unexpected)? unexpected,
    R Function(LocationFailureNoLocationFound noLocationFound)? noLocationFound,
    R Function(LocationFailureTimeout timeout)? timeout,
    R Function(LocationFailurePermissionDenied permissionDenied)?
        permissionDenied,
    R Function(LocationFailureNoInternetConnection noInternetConnection)?
        noInternetConnection,
    required R Function(LocationFailure locationFailure) orElse,
  }) {
    final locationFailure = this;
    if (locationFailure is LocationFailureUnexpected) {
      return unexpected != null
          ? unexpected(locationFailure)
          : orElse(locationFailure);
    } else if (locationFailure is LocationFailureNoLocationFound) {
      return noLocationFound != null
          ? noLocationFound(locationFailure)
          : orElse(locationFailure);
    } else if (locationFailure is LocationFailureTimeout) {
      return timeout != null
          ? timeout(locationFailure)
          : orElse(locationFailure);
    } else if (locationFailure is LocationFailurePermissionDenied) {
      return permissionDenied != null
          ? permissionDenied(locationFailure)
          : orElse(locationFailure);
    } else if (locationFailure is LocationFailureNoInternetConnection) {
      return noInternetConnection != null
          ? noInternetConnection(locationFailure)
          : orElse(locationFailure);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(LocationFailureUnexpected unexpected)? unexpected,
    void Function(LocationFailureNoLocationFound noLocationFound)?
        noLocationFound,
    void Function(LocationFailureTimeout timeout)? timeout,
    void Function(LocationFailurePermissionDenied permissionDenied)?
        permissionDenied,
    void Function(LocationFailureNoInternetConnection noInternetConnection)?
        noInternetConnection,
    void Function(LocationFailure locationFailure)? orElse,
  }) {
    final locationFailure = this;
    if (locationFailure is LocationFailureUnexpected) {
      if (unexpected != null) {
        unexpected(locationFailure);
      } else if (orElse != null) {
        orElse(locationFailure);
      }
    } else if (locationFailure is LocationFailureNoLocationFound) {
      if (noLocationFound != null) {
        noLocationFound(locationFailure);
      } else if (orElse != null) {
        orElse(locationFailure);
      }
    } else if (locationFailure is LocationFailureTimeout) {
      if (timeout != null) {
        timeout(locationFailure);
      } else if (orElse != null) {
        orElse(locationFailure);
      }
    } else if (locationFailure is LocationFailurePermissionDenied) {
      if (permissionDenied != null) {
        permissionDenied(locationFailure);
      } else if (orElse != null) {
        orElse(locationFailure);
      }
    } else if (locationFailure is LocationFailureNoInternetConnection) {
      if (noInternetConnection != null) {
        noInternetConnection(locationFailure);
      } else if (orElse != null) {
        orElse(locationFailure);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(LocationFailureUnexpected unexpected)? unexpected,
    R Function(LocationFailureNoLocationFound noLocationFound)? noLocationFound,
    R Function(LocationFailureTimeout timeout)? timeout,
    R Function(LocationFailurePermissionDenied permissionDenied)?
        permissionDenied,
    R Function(LocationFailureNoInternetConnection noInternetConnection)?
        noInternetConnection,
    R Function(LocationFailure locationFailure)? orElse,
  }) {
    final locationFailure = this;
    if (locationFailure is LocationFailureUnexpected) {
      return unexpected != null
          ? unexpected(locationFailure)
          : orElse?.call(locationFailure);
    } else if (locationFailure is LocationFailureNoLocationFound) {
      return noLocationFound != null
          ? noLocationFound(locationFailure)
          : orElse?.call(locationFailure);
    } else if (locationFailure is LocationFailureTimeout) {
      return timeout != null
          ? timeout(locationFailure)
          : orElse?.call(locationFailure);
    } else if (locationFailure is LocationFailurePermissionDenied) {
      return permissionDenied != null
          ? permissionDenied(locationFailure)
          : orElse?.call(locationFailure);
    } else if (locationFailure is LocationFailureNoInternetConnection) {
      return noInternetConnection != null
          ? noInternetConnection(locationFailure)
          : orElse?.call(locationFailure);
    } else {
      throw AssertionError();
    }
  }
}

/// (([LocationFailureUnexpected] : [LocationFailure]) unexpected){}
///
/// with data equality
class LocationFailureUnexpected extends LocationFailure with EquatableMixin {
  const LocationFailureUnexpected() : super._internal();

  @override
  String toString() => 'LocationFailure.unexpected()';

  @override
  List<Object?> get props => [];
}

/// (([LocationFailureNoLocationFound] : [LocationFailure]) noLocationFound){}
///
/// with data equality
class LocationFailureNoLocationFound extends LocationFailure
    with EquatableMixin {
  const LocationFailureNoLocationFound() : super._internal();

  @override
  String toString() => 'LocationFailure.noLocationFound()';

  @override
  List<Object?> get props => [];
}

/// (([LocationFailureTimeout] : [LocationFailure]) timeout){}
///
/// with data equality
class LocationFailureTimeout extends LocationFailure with EquatableMixin {
  const LocationFailureTimeout() : super._internal();

  @override
  String toString() => 'LocationFailure.timeout()';

  @override
  List<Object?> get props => [];
}

/// (([LocationFailurePermissionDenied] : [LocationFailure]) permissionDenied){}
///
/// with data equality
class LocationFailurePermissionDenied extends LocationFailure
    with EquatableMixin {
  const LocationFailurePermissionDenied() : super._internal();

  @override
  String toString() => 'LocationFailure.permissionDenied()';

  @override
  List<Object?> get props => [];
}

/// (([LocationFailureNoInternetConnection] : [LocationFailure]) noInternetConnection){}
///
/// with data equality
class LocationFailureNoInternetConnection extends LocationFailure
    with EquatableMixin {
  const LocationFailureNoInternetConnection() : super._internal();

  @override
  String toString() => 'LocationFailure.noInternetConnection()';

  @override
  List<Object?> get props => [];
}
