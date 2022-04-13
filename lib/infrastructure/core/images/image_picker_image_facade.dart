import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:shopify_manager/domain/core/images/i_image_facade.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IImageFacade)
class ImagePickerImageFacade implements IImageFacade {
  final ImagePicker _imagePicker;
  ImagePickerImageFacade(this._imagePicker);
  @override
  Future<Either<ImageFailure, Photo>> getPhoto(
      {int minHeight = 100,
      int minWidth = 100,
      int maxHeight = 1000,
      int maxWidth = 1000}) async {
    try {
      final image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxHeight: maxHeight.toDouble(),
        maxWidth: maxWidth.toDouble(),
      );

      if (image == null || image.path == '') {
        return left(const ImageFailure.noImageSelected());
      } else {
        final imageBytes = await image.readAsBytes();
        final decodedImage = await decodeImageFromList(imageBytes);
        if (decodedImage.width < Photo.minWidth ||
            decodedImage.height < Photo.minHeight ||
            decodedImage.width > Photo.maxHeight ||
            decodedImage.height > Photo.maxHeight) {
          return left(const ImageFailure.invalidImageSize());
        }

        return right(Photo(File(image.path),
            maxPhotoHeight: maxHeight, maxPhotoWidth: maxWidth));
      }
    } on PlatformException catch (_) {
      // TODO log error
      return left(const ImageFailure.unexpected());
    }
  }

  @override
  Future<Either<ImageFailure, KtList<Photo>>> getMultiplePhotos(
      {int min = 1,
      int max = 5,
      int minHeight = 100,
      int minWidth = 100,
      int maxHeight = 1000,
      int maxWidth = 1000}) {
    // TODO: implement getPhotos
    throw UnimplementedError();
  }
}
