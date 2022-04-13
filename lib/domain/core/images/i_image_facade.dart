import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';

abstract class IImageFacade {
  Future<Either<ImageFailure, Photo>> getPhoto(
      {int minHeight = 100,
      int minWidth = 100,
      int maxHeight = 1000,
      int maxWidth = 1000});
  Future<Either<ImageFailure, KtList<Photo>>> getMultiplePhotos(
      {int min = 1,
      int max = 5,
      int minHeight = 100,
      int minWidth = 100,
      int maxHeight = 1000,
      int maxWidth = 1000});
}
