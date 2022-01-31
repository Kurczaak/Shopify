import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';
import '../../utils/random_string_generator.dart';

void main() {
  group('ShopName', () {
    const shopNameStr = "Sklep spożywczy ABC";

    test(
      'should return a ShopName entity with a correct shopName value',
      () async {
        // act
        final result = ShopName(shopNameStr);
        // assert
        expect(result.value, equals(right(shopNameStr)));
      },
    );

    test(
      'should return a ValueFailure when shopName is too long',
      () async {
        // arrange
        final tooLongShopNameStr = getRandomString(ShopName.maxLength + 1);
        // act
        final result = ShopName(tooLongShopNameStr);
        // assert
        expect(
            result.value,
            equals(left(ValueFailure.shopping(
                ShoppingValueFailure.exceedingLength(
                    failedValue: tooLongShopNameStr,
                    maxLength: ShopName.maxLength)))));
      },
    );

    test(
      'should return a ValueFailure when shopName is too short',
      () async {
        // arrange
        const tooShortShopName = 'A';
        // act
        final result = ShopName(tooShortShopName);
        // assert
        expect(
            result.value,
            equals(left(const ValueFailure.shopping(
                ShoppingValueFailure.stringTooShort(
                    failedValue: tooShortShopName,
                    minLength: ShopName.minLength)))));
      },
    );

    test(
      'should return a ValueFailure when shopName is multiline',
      () async {
        // arrange
        const multilineShopName = 'Sklep \n ABC';
        // act
        final result = ShopName(multilineShopName);
        // assert
        expect(
            result.value,
            equals(left(const ValueFailure.shopping(
                ShoppingValueFailure.multiline(
                    failedValue: multilineShopName)))));
      },
    );
  });

  group('Hour', () {
    test(
      'should return an Hour entity when a correct hour input is given',
      () async {
        // arrange
        int hourInput = 8;
        // act
        final result = Hour(hourInput);
        // assert
        expect(result.value, equals(right(hourInput)));
      },
    );

    test(
      'should return a ValueFailure when given an incorrect hour',
      () async {
        // arrange
        int incorrectHour = 13;
        // act
        final result = Hour(incorrectHour, twelveHourFormat: true);
        // assert
        expect(
            result.value,
            equals(left(ValueFailure.shopping(
                ShoppingValueFailure.incorrectHour(
                    failedValue: incorrectHour, twelveHourFormat: true)))));
      },
    );
  });
}
