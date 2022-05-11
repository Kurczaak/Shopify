import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/images/validators.dart';
import 'package:shopify_manager/domain/core/value_failures.dart';

import '../../../utils/image_reader.dart';

void main() async {
  final image320x100 = await getImageFileFromAssets('test_logo.jpg');
  final tooSmallImage = await getImageFileFromAssets('too_small_logo.jpg');
  final tooBigImage = await getImageFileFromAssets('too_big_logo.jpg');
  const logoWidth = 320;
  const logoHeight = 100;

  test(
    'should return valid logo',
    () async {
      // act
      final result = validatePhotoTooBig(image320x100,
          maxHeight: logoHeight, maxWidth: logoWidth);
      // assert
      expect(result, right(image320x100));
    },
  );
  test(
    'should return a failure when logo is too big',
    () async {
      // act
      final result = validatePhotoTooBig(tooBigImage,
          maxHeight: ShopLogo.maxHeight, maxWidth: ShopLogo.maxWidth);
      // assert
      expect(
          result,
          left(ValueFailure.core(CoreValueFailure.imageTooBig(
              failedValue: tooBigImage,
              maxHeight: ShopLogo.maxHeight,
              maxWidth: ShopLogo.maxWidth))));
    },
  );

  test(
    'should return a failure when logo is too small',
    () async {
      // act
      final result = validatePhotoTooSmall(tooSmallImage,
          minHeight: ShopLogo.minHeight, minWidth: ShopLogo.minWidth);
      // assert
      expect(
          result,
          left(ValueFailure.core(CoreValueFailure.imageTooSmall(
              failedValue: tooSmallImage,
              minHeight: ShopLogo.minHeight,
              minWidth: ShopLogo.minWidth))));
    },
  );
}
