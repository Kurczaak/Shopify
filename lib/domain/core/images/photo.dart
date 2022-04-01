import 'dart:io';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/images/validators.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shop/failures.dart';

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

  @override
  List<Object> get props => [value.fold((l) => l, (r) => r.readAsBytesSync())];

  @override
  String toString() {
    return value.fold((l) => l.toString(), (r) => r.path);
  }
}

class ShopLogo extends Photo {
  static const int maxHeight = 400;
  static const int maxWidth = 900;
  static const int minHeight = Photo.minHeight;
  static const int minWidth = Photo.minWidth;

  ShopLogo.empty()
      : super._(left(ValueFailure.shop(ShopValueFailure.empty(
            failedValue: File.fromRawPath(Uint8List.fromList([]))))));

  ShopLogo(File file)
      : super._(
            validatePhotoTooBig(file, maxHeight: maxHeight, maxWidth: maxWidth)
                .andThen(validatePhotoTooSmall(file,
                    minWidth: Photo.minWidth, minHeight: Photo.minHeight)));
}
