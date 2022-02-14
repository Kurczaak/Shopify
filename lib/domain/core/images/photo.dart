import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/images/validators.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';

class Photo extends ValueObject<File> {
  static const int maxHeight = 768;
  static const int maxWidth = 1024;
  static const int minHeight = 24;
  static const int minWidth = 24;

  @override
  final Either<ValueFailure<File>, File> value;

  factory Photo(File file, int maxHeight, int maxWidth) => Photo._(
      validatePhotoTooBig(file, maxHeight: maxHeight, maxWidth: maxWidth)
          .andThen(validatePhotoTooSmall(file,
              minWidth: minWidth, minHeight: minHeight)));
  const Photo._(this.value);
}

class ShopLogo extends Photo {
  static const int maxHeight = 100;
  static const int maxWidth = 320;
  static const int minHeight = Photo.minHeight;
  static const int minWidth = Photo.minWidth;

  ShopLogo(File file)
      : super._(
            validatePhotoTooBig(file, maxHeight: maxHeight, maxWidth: maxWidth)
                .andThen(validatePhotoTooSmall(file,
                    minWidth: Photo.minWidth, minHeight: Photo.minHeight)));
}
