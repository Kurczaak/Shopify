import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/images/validators.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';

import '../../../utils/image_reader.dart';

void main() async {
  final image320x100 = await getImageFileFromAssets('test_logo.jpg');
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
      final result = validatePhotoTooBig(image320x100,
          maxHeight: logoHeight - 1, maxWidth: logoWidth);
      // assert
      expect(
          result,
          left(ValueFailure.shopping(ShoppingValueFailure.imageTooBig(
              failedValue: image320x100,
              maxHeight: ShopLogo.maxHeight - 1,
              maxWidth: ShopLogo.maxWidth))));
    },
  );

  test(
    'should return a failure when logo is too small',
    () async {
      // act
      final result = validatePhotoTooSmall(image320x100,
          minHeight: logoHeight + 1, minWidth: logoWidth);
      // assert
      expect(
          result,
          left(ValueFailure.shopping(ShoppingValueFailure.imageTooSmall(
              failedValue: image320x100,
              minHeight: ShopLogo.maxHeight + 1,
              minWidth: ShopLogo.maxWidth))));
    },
  );
}
