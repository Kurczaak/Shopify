import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/images/i_image_facade.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';

class ImageFacade implements IImageFacade {
  @override
  Future<Either<ImageFailure, ShopLogo>> getShopLogo() {
    // TODO: implement getShopLogo
    throw UnimplementedError();
  }
}
