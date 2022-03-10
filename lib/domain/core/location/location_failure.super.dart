// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_failure.dart';

// **************************************************************************
// Generator: super_enum_sealed_generators
// **************************************************************************

// ignore_for_file: unused_element, unused_field

// Migration guide for LocationFailure:
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
// abstract class _LocationFailure
// {
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Unexpected')
// void unexpected();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('NoLocationFound')
// void noLocationFound();
// }

/// [LocationFailure] {
///
/// ([Unexpected] unexpected){} with data equality with wrap
///
/// ([NoLocationFound] noLocationFound){} with data equality with wrap
///
/// }
@immutable
abstract class LocationFailure {
  const LocationFailure._internal();

  const factory LocationFailure.unexpected() = Unexpected;

  const factory LocationFailure.noLocationFound() = NoLocationFound;

  bool isUnexpected() => this is Unexpected;

  bool isNoLocationFound() => this is NoLocationFound;

  Unexpected asUnexpected() => this as Unexpected;

  NoLocationFound asNoLocationFound() => this as NoLocationFound;

  Unexpected? asUnexpectedOrNull() {
    final locationFailure = this;
    return locationFailure is Unexpected ? locationFailure : null;
  }

  NoLocationFound? asNoLocationFoundOrNull() {
    final locationFailure = this;
    return locationFailure is NoLocationFound ? locationFailure : null;
  }

  R when<R extends Object?>({
    required R Function() unexpected,
    required R Function() noLocationFound,
  }) {
    final locationFailure = this;
    if (locationFailure is Unexpected) {
      return unexpected();
    } else if (locationFailure is NoLocationFound) {
      return noLocationFound();
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function()? unexpected,
    R Function()? noLocationFound,
    required R Function(LocationFailure locationFailure) orElse,
  }) {
    final locationFailure = this;
    if (locationFailure is Unexpected) {
      return unexpected != null ? unexpected() : orElse(locationFailure);
    } else if (locationFailure is NoLocationFound) {
      return noLocationFound != null
          ? noLocationFound()
          : orElse(locationFailure);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function()? unexpected,
    R Function()? noLocationFound,
    required R orDefault,
  }) {
    final locationFailure = this;
    if (locationFailure is Unexpected) {
      return unexpected != null ? unexpected() : orDefault;
    } else if (locationFailure is NoLocationFound) {
      return noLocationFound != null ? noLocationFound() : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? unexpected,
    R Function()? noLocationFound,
  }) {
    final locationFailure = this;
    if (locationFailure is Unexpected) {
      return unexpected?.call();
    } else if (locationFailure is NoLocationFound) {
      return noLocationFound?.call();
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function()? unexpected,
    R Function()? noLocationFound,
  }) {
    final locationFailure = this;
    if (locationFailure is Unexpected && unexpected != null) {
      return unexpected();
    } else if (locationFailure is NoLocationFound && noLocationFound != null) {
      return noLocationFound();
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function()? unexpected,
    void Function()? noLocationFound,
  }) {
    final locationFailure = this;
    if (locationFailure is Unexpected) {
      unexpected?.call();
    } else if (locationFailure is NoLocationFound) {
      noLocationFound?.call();
    } else {
      throw AssertionError();
    }
  }
}

/// (([Unexpected] : [LocationFailure]) unexpected){}
///
/// with data equality
///
/// with wrap
@immutable
class Unexpected extends LocationFailure with EquatableMixin {
  const Unexpected() : super._internal();

  @override
  String toString() => 'LocationFailure.unexpected()';

  @override
  List<Object?> get props => [];
}

/// (([NoLocationFound] : [LocationFailure]) noLocationFound){}
///
/// with data equality
///
/// with wrap
@immutable
class NoLocationFound extends LocationFailure with EquatableMixin {
  const NoLocationFound() : super._internal();

  @override
  String toString() => 'LocationFailure.noLocationFound()';

  @override
  List<Object?> get props => [];
}
