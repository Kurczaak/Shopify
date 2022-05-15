import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/core/value_failures.dart';

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
    'should have data equality',
    () async {
      // arrange
      final tLogo2 = await getImageFileFromAssets('test_logo.jpg');
      // act
      final tShopLogo1 = ShopLogo(tLogo);
      final tShopLogo2 = ShopLogo(tLogo2);
      // assert
      expect(tShopLogo2, equals(tShopLogo1));
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
          left(ValueFailure.core(CoreValueFailure.imageTooSmall(
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
          left(ValueFailure.core(CoreValueFailure.imageTooBig(
              failedValue: tTooBigLogo,
              maxHeight: ShopLogo.maxHeight,
              maxWidth: ShopLogo.maxWidth))));
    },
  );
}
