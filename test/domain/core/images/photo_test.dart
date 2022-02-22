import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';

import '../../../utils/image_reader.dart';

void main() async {
  final tLogo = await getImageFileFromAssets('test_logo.jpg');
  final tTooSmallLogo = await getImageFileFromAssets('too_small_logo.jpg');
  final tTooBigLogo = await getImageFileFromAssets('too_big_logo.jpg');
  test(
    'should return a photo containing valid logo',
    () async {
      // act
      final tShopLogo = ShopLogo(tLogo);
      // assert
      expect(tShopLogo.value, right(tLogo));
    },
  );

  test(
    'should return a value failure when logo is too small',
    () async {
      // act
      final result = ShopLogo(tTooSmallLogo);
      // assert
      expect(
          result.value,
          left(ValueFailure.shopping(ShoppingValueFailure.imageTooSmall(
              failedValue: tTooSmallLogo,
              minHeight: ShopLogo.minHeight,
              minWidth: ShopLogo.minWidth))));
    },
  );
  test(
    'should return a value failure when logo is too big',
    () async {
      // act
      final result = ShopLogo(tTooBigLogo);
      // assert
      expect(
          result.value,
          left(ValueFailure.shopping(ShoppingValueFailure.imageTooBig(
              failedValue: tTooBigLogo,
              maxHeight: ShopLogo.maxHeight,
              maxWidth: ShopLogo.maxWidth))));
    },
  );
}
