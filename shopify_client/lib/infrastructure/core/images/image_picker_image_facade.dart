import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IImageFacade)
class ImagePickerImageFacade implements IImageFacade {
  final ImagePicker _imagePicker;
  ImagePickerImageFacade(this._imagePicker);
  @override
  Future<Either<ImageFailure, ShopLogo>> getShopLogo() async {
    try {
      final image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxHeight: ShopLogo.maxHeight.toDouble(),
        maxWidth: ShopLogo.maxWidth.toDouble(),
      );

      if (image == null || image.path == '') {
        return left(const ImageFailure.noImageSelected());
      } else {
        return right(ShopLogo(File(image.path)));
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
    // TODO: implement getMultiplePhotos
    throw UnimplementedError();
  }

  @override
  Future<Either<ImageFailure, Photo>> getPhoto(
      {int minHeight = 100,
      int minWidth = 100,
      int maxHeight = 1000,
      int maxWidth = 1000}) {
    // TODO: implement getPhoto
    throw UnimplementedError();
  }
}
