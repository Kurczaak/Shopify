import 'package:dartz/dartz.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/core/images/i_image_facade.dart';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IImageFacade)
class ImagePickerImageFacade implements IImageFacade {
  final ImagePicker _imagePicker;
  ImagePickerImageFacade(this._imagePicker);

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
