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
// @WithName('PermissionDenied')
// void permissionDenied();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Unexpected')
// void unexpected();
// }

/// [LocationFailure] {
///
/// ([PermissionDenied] permissionDenied){} with data equality with wrap
///
/// ([Unexpected] unexpected){} with data equality with wrap
///
/// }
@immutable
abstract class LocationFailure {
  const LocationFailure._internal();

  const factory LocationFailure.permissionDenied() = PermissionDenied;

  const factory LocationFailure.unexpected() = Unexpected;

  bool isPermissionDenied() => this is PermissionDenied;

  bool isUnexpected() => this is Unexpected;

  PermissionDenied asPermissionDenied() => this as PermissionDenied;

  Unexpected asUnexpected() => this as Unexpected;

  PermissionDenied? asPermissionDeniedOrNull() {
    final locationFailure = this;
    return locationFailure is PermissionDenied ? locationFailure : null;
  }

  Unexpected? asUnexpectedOrNull() {
    final locationFailure = this;
    return locationFailure is Unexpected ? locationFailure : null;
  }

  R when<R extends Object?>({
    required R Function() permissionDenied,
    required R Function() unexpected,
  }) {
    final locationFailure = this;
    if (locationFailure is PermissionDenied) {
      return permissionDenied();
    } else if (locationFailure is Unexpected) {
      return unexpected();
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function()? permissionDenied,
    R Function()? unexpected,
    required R Function(LocationFailure locationFailure) orElse,
  }) {
    final locationFailure = this;
    if (locationFailure is PermissionDenied) {
      return permissionDenied != null
          ? permissionDenied()
          : orElse(locationFailure);
    } else if (locationFailure is Unexpected) {
      return unexpected != null ? unexpected() : orElse(locationFailure);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function()? permissionDenied,
    R Function()? unexpected,
    required R orDefault,
  }) {
    final locationFailure = this;
    if (locationFailure is PermissionDenied) {
      return permissionDenied != null ? permissionDenied() : orDefault;
    } else if (locationFailure is Unexpected) {
      return unexpected != null ? unexpected() : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? permissionDenied,
    R Function()? unexpected,
  }) {
    final locationFailure = this;
    if (locationFailure is PermissionDenied) {
      return permissionDenied?.call();
    } else if (locationFailure is Unexpected) {
      return unexpected?.call();
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function()? permissionDenied,
    R Function()? unexpected,
  }) {
    final locationFailure = this;
    if (locationFailure is PermissionDenied && permissionDenied != null) {
      return permissionDenied();
    } else if (locationFailure is Unexpected && unexpected != null) {
      return unexpected();
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function()? permissionDenied,
    void Function()? unexpected,
  }) {
    final locationFailure = this;
    if (locationFailure is PermissionDenied) {
      permissionDenied?.call();
    } else if (locationFailure is Unexpected) {
      unexpected?.call();
    } else {
      throw AssertionError();
    }
  }
}

/// (([PermissionDenied] : [LocationFailure]) permissionDenied){}
///
/// with data equality
///
/// with wrap
@immutable
class PermissionDenied extends LocationFailure with EquatableMixin {
  const PermissionDenied() : super._internal();

  @override
  String toString() => 'LocationFailure.permissionDenied()';

  @override
  List<Object?> get props => [];
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
