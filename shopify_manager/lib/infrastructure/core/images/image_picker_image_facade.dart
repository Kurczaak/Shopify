import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/core/images/image_failure.dart';
import 'package:shopify_domain/core/images/photo_picker.dart';
import 'package:shopify_manager/domain/core/images/i_image_facade.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IImageFacade)
class ImagePickerImageFacade implements IImageFacade {
  final PhotoPicker _photoPicker;
  ImagePickerImageFacade(this._photoPicker);

  @override
  Future<Either<ImageFailure, KtList<Photo>>> getMultiplePhotos(
      {int min = 1,
      int max = 5,
      int minHeight = 100,
      int minWidth = 100,
      int maxHeight = 1000,
      int maxWidth = 1000}) {
    return _photoPicker.getMultiplePhotos(
        max: max,
        maxHeight: maxHeight,
        maxWidth: maxWidth,
        min: min,
        minHeight: minHeight,
        minWidth: minWidth);
  }

  @override
  Future<Either<ImageFailure, Photo>> getPhoto(
      {int minHeight = 100,
      int minWidth = 100,
      int maxHeight = 1000,
      int maxWidth = 1000}) {
    return _photoPicker.getPhoto(
        maxHeight: maxHeight,
        maxWidth: maxWidth,
        minHeight: minHeight,
        minWidth: minWidth);
  }
}
