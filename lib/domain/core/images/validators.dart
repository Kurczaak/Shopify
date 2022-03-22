import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/core/failures.dart';
import 'package:shopify_client/domain/shopping/failures.dart';
import 'package:image_size_getter/image_size_getter.dart';
import 'package:image_size_getter/file_input.dart'; // For compatibility with flutter web.

Either<ValueFailure<File>, File> validatePhotoTooBig(File fileImage,
    {required int maxWidth, required int maxHeight}) {
  final size = ImageSizeGetter.getSize(FileInput(fileImage));
  if (size.height > maxHeight || size.width > maxWidth) {
    return left(ValueFailure.shopping(ShoppingValueFailure.imageTooBig(
        failedValue: fileImage, maxHeight: maxHeight, maxWidth: maxWidth)));
  } else {
    return right(fileImage);
  }
}

Either<ValueFailure<File>, File> validatePhotoTooSmall(File fileImage,
    {required int minWidth, required int minHeight}) {
  final size = ImageSizeGetter.getSize(FileInput(fileImage));
  if (size.height < minHeight || size.width < minWidth) {
    return left(ValueFailure.shopping(ShoppingValueFailure.imageTooSmall(
        failedValue: fileImage, minHeight: minHeight, minWidth: minWidth)));
  } else {
    return right(fileImage);
  }
}
