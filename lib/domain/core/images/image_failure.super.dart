// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_failure.dart';

// **************************************************************************
// Generator: super_enum_sealed_generators
// **************************************************************************

// ignore_for_file: unused_element, unused_field

// Migration guide for ImageFailure:
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
// abstract class _ImageFailure
// {
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Unexpected')
// void unexpected();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('NoImageSelected')
// void noImageSelected();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('InvalidImageSize')
// void invalidImageSize();
// }

/// [ImageFailure] {
///
/// ([Unexpected] unexpected){} with data equality with wrap
///
/// ([NoImageSelected] noImageSelected){} with data equality with wrap
///
/// ([InvalidImageSize] invalidImageSize){} with data equality with wrap
///
/// }
@immutable
abstract class ImageFailure {
  const ImageFailure._internal();

  const factory ImageFailure.unexpected() = Unexpected;

  const factory ImageFailure.noImageSelected() = NoImageSelected;

  const factory ImageFailure.invalidImageSize() = InvalidImageSize;

  bool isUnexpected() => this is Unexpected;

  bool isNoImageSelected() => this is NoImageSelected;

  bool isInvalidImageSize() => this is InvalidImageSize;

  Unexpected asUnexpected() => this as Unexpected;

  NoImageSelected asNoImageSelected() => this as NoImageSelected;

  InvalidImageSize asInvalidImageSize() => this as InvalidImageSize;

  Unexpected? asUnexpectedOrNull() {
    final imageFailure = this;
    return imageFailure is Unexpected ? imageFailure : null;
  }

  NoImageSelected? asNoImageSelectedOrNull() {
    final imageFailure = this;
    return imageFailure is NoImageSelected ? imageFailure : null;
  }

  InvalidImageSize? asInvalidImageSizeOrNull() {
    final imageFailure = this;
    return imageFailure is InvalidImageSize ? imageFailure : null;
  }

  R when<R extends Object?>({
    required R Function() unexpected,
    required R Function() noImageSelected,
    required R Function() invalidImageSize,
  }) {
    final imageFailure = this;
    if (imageFailure is Unexpected) {
      return unexpected();
    } else if (imageFailure is NoImageSelected) {
      return noImageSelected();
    } else if (imageFailure is InvalidImageSize) {
      return invalidImageSize();
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function()? unexpected,
    R Function()? noImageSelected,
    R Function()? invalidImageSize,
    required R Function(ImageFailure imageFailure) orElse,
  }) {
    final imageFailure = this;
    if (imageFailure is Unexpected) {
      return unexpected != null ? unexpected() : orElse(imageFailure);
    } else if (imageFailure is NoImageSelected) {
      return noImageSelected != null ? noImageSelected() : orElse(imageFailure);
    } else if (imageFailure is InvalidImageSize) {
      return invalidImageSize != null
          ? invalidImageSize()
          : orElse(imageFailure);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function()? unexpected,
    R Function()? noImageSelected,
    R Function()? invalidImageSize,
    required R orDefault,
  }) {
    final imageFailure = this;
    if (imageFailure is Unexpected) {
      return unexpected != null ? unexpected() : orDefault;
    } else if (imageFailure is NoImageSelected) {
      return noImageSelected != null ? noImageSelected() : orDefault;
    } else if (imageFailure is InvalidImageSize) {
      return invalidImageSize != null ? invalidImageSize() : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? unexpected,
    R Function()? noImageSelected,
    R Function()? invalidImageSize,
  }) {
    final imageFailure = this;
    if (imageFailure is Unexpected) {
      return unexpected?.call();
    } else if (imageFailure is NoImageSelected) {
      return noImageSelected?.call();
    } else if (imageFailure is InvalidImageSize) {
      return invalidImageSize?.call();
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function()? unexpected,
    R Function()? noImageSelected,
    R Function()? invalidImageSize,
  }) {
    final imageFailure = this;
    if (imageFailure is Unexpected && unexpected != null) {
      return unexpected();
    } else if (imageFailure is NoImageSelected && noImageSelected != null) {
      return noImageSelected();
    } else if (imageFailure is InvalidImageSize && invalidImageSize != null) {
      return invalidImageSize();
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function()? unexpected,
    void Function()? noImageSelected,
    void Function()? invalidImageSize,
  }) {
    final imageFailure = this;
    if (imageFailure is Unexpected) {
      unexpected?.call();
    } else if (imageFailure is NoImageSelected) {
      noImageSelected?.call();
    } else if (imageFailure is InvalidImageSize) {
      invalidImageSize?.call();
    } else {
      throw AssertionError();
    }
  }
}

/// (([Unexpected] : [ImageFailure]) unexpected){}
///
/// with data equality
///
/// with wrap
@immutable
class Unexpected extends ImageFailure with EquatableMixin {
  const Unexpected() : super._internal();

  @override
  String toString() => 'ImageFailure.unexpected()';

  @override
  List<Object?> get props => [];
}

/// (([NoImageSelected] : [ImageFailure]) noImageSelected){}
///
/// with data equality
///
/// with wrap
@immutable
class NoImageSelected extends ImageFailure with EquatableMixin {
  const NoImageSelected() : super._internal();

  @override
  String toString() => 'ImageFailure.noImageSelected()';

  @override
  List<Object?> get props => [];
}

/// (([InvalidImageSize] : [ImageFailure]) invalidImageSize){}
///
/// with data equality
///
/// with wrap
@immutable
class InvalidImageSize extends ImageFailure with EquatableMixin {
  const InvalidImageSize() : super._internal();

  @override
  String toString() => 'ImageFailure.invalidImageSize()';

  @override
  List<Object?> get props => [];
}
