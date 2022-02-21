import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
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
    } on PlatformException catch (e) {
      // TODO log error
      return left(const ImageFailure.unexpected());
    }
  }
}
