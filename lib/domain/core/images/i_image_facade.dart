import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';

abstract class IImageFacade {
  Future<Either<ImageFailure, ShopLogo>> getShopLogo();
}
