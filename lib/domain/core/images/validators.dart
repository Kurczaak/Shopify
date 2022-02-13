import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';

abstract class PhotoValidator {
  Future<Either<ValueFailure, XFile>> validatePhotoSize(XFile fileImage,
      {required int width, required int height});
}

class PhotoValidatorImpl implements PhotoValidator {
  @override
  Future<Either<ValueFailure, XFile>> validatePhotoSize(XFile fileImage,
      {required int width, required int height}) async {
    final xd = await fileImage.readAsBytes();
    final a = await decodeImageFromList(xd);
    if (a.width > 320 || a.height > 100) {
      return left(ValueFailure.shopping(ShoppingValueFailure.noPhotoSelected(
          failedValue: a.height.toString())));
    }
    return right(fileImage);
  }
}
