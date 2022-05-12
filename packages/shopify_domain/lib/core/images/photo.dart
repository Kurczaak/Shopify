import 'dart:io';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/errors.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/images/validators.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/core/value_failures.dart';

class Photo extends ValueObject<File> {
  static const int maxHeight = 5000;
  static const int maxWidth = 3000;
  static const int minHeight = 24;
  static const int minWidth = 24;

  @override
  final Either<ValueFailure<File>, File> value;

  factory Photo(File file,
          {int maxPhotoHeight = maxHeight, int maxPhotoWidth = maxWidth}) =>
      Photo._(validatePhotoTooBig(file,
              maxHeight: maxPhotoHeight, maxWidth: maxPhotoWidth)
          .andThen(validatePhotoTooSmall(file,
              minWidth: minWidth, minHeight: minHeight)));
  const Photo._(this.value);

  @override
  File getOrCrash() {
    return value.fold(
        (failure) => throw UnexpectedValueError(failure), (file) => file);
  }

  @override
  List<Object> get props => [value.fold((l) => l, (r) => r.readAsBytesSync())];

  @override
  String toString() {
    return value.fold((l) => l.toString(), (r) => r.path);
  }
}

class ShopLogo extends Photo {
  static const int maxHeight = 768;
  static const int maxWidth = 1024;
  static const int minHeight = Photo.minHeight;
  static const int minWidth = Photo.minWidth;

  ShopLogo.empty()
      : super._(left(const ValueFailure.core(CoreValueFailure.empty())));

  ShopLogo(File file)
      : super._(
            validatePhotoTooBig(file, maxHeight: maxHeight, maxWidth: maxWidth)
                .andThen(validatePhotoTooSmall(file,
                    minWidth: Photo.minWidth, minHeight: Photo.minHeight)));
}

class ProductPhoto extends Photo {
  static const int maxHeight = 400;
  static const int maxWidth = 900;
  static const int minHeight = Photo.minHeight;
  static const int minWidth = Photo.minWidth;

  ProductPhoto.empty()
      : super._(left(const ValueFailure.core(CoreValueFailure.empty())));

  ProductPhoto(File file)
      : super._(
            validatePhotoTooBig(file, maxHeight: maxHeight, maxWidth: maxWidth)
                .andThen(validatePhotoTooSmall(file,
                    minWidth: Photo.minWidth, minHeight: Photo.minHeight)));
}
