import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core/images/image_failure.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/injection.dart';

abstract class PhotoPicker {
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
  static PhotoPicker get instance => getIt<PhotoPicker>();
}
