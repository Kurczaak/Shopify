import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/product/price.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:shopify_manager/domain/product/weight.dart';
import '../../fixtures/description_501_chars.dart';

void main() {
  group('ProductName', () {
    test(
      'should pass a valid product name',
      () async {
        // arrange
        const String correctName = 'Correct product name';
        // act
        final result = ProductName(correctName);
        // assert
        expect(result.value, right(correctName));
      },
    );

    test(
      'should not pass product with exceeding string length',
      () async {
        // arrange
        const String tooLongString =
            'This Product Name Should Definitely Be invalid';
        // act
        final result = ProductName(tooLongString);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );

    test(
      'should not pass name with too short string',
      () async {
        // arrange
        const String tooShortStr = 'a';
        // act
        final result = ProductName(tooShortStr);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );

    test(
      'should not pass an empty str with white chars',
      () async {
        // arrange
        const String emptyStr = '              ';
        // act
        final result = ProductName(emptyStr);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );

    test(
      'should not pass an empty str with new line characters',
      () async {
        // arrange
        const String emptyStr = '\n\n a \n\n b \n\n\n ';
        // act
        final result = ProductName(emptyStr);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );

    test(
      'should not pass multiline strings',
      () async {
        // arrange
        const String multilineStr = 'this string \n is multiline';
        // act
        final result = ProductName(multilineStr);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );
  });

  group('BrandName', () {
    test(
      'should pass a valid brand name',
      () async {
        // arrange
        const String correctName = 'Correct Brand name';
        // act
        final result = BrandName(correctName);
        // assert
        expect(result.value, right(correctName));
      },
    );

    test(
      'should not pass brand with exceeding string length',
      () async {
        // arrange
        const String tooLongString =
            'This brand Name Should Definitely Be invalid Otherwise I am a bad developer';
        // act
        final result = BrandName(tooLongString);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );

    test(
      'should not pass name with too short string',
      () async {
        // arrange
        const String tooShortStr = 'a';
        // act
        final result = BrandName(tooShortStr);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );

    test(
      'should not pass an empty str with white chars',
      () async {
        // arrange
        const String emptyStr = '              ';
        // act
        final result = BrandName(emptyStr);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );

    test(
      'should not pass an empty str with new line characters',
      () async {
        // arrange
        const String emptyStr = '\n\n a \n\n b \n\n\n ';
        // act
        final result = BrandName(emptyStr);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );

    test(
      'should not pass multiline strings',
      () async {
        // arrange
        const String multilineStr = 'this string \n is multiline';
        // act
        final result = BrandName(multilineStr);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );
  });

  group('ProductDescription', () {
    test(
      'should pass a valid description',
      () async {
        // arrange
        const String description =
            'This is the best product ever! \n you should definitelly buy it!';
        // act
        final result = ProductDescription(description);
        // assert
        expect(result.value, right(description));
      },
    );
    test(
      'should not pass a too long description',
      () async {
        // arrange
        const desc = reallyLongDescription;
        // act
        final result = ProductDescription(desc);
        // assert
        expect(result.value, isA<Left<ValueFailure<String>, String>>());
      },
    );

    test(
      'should pass an empty description',
      () async {
        // arrange
        const desc = '';
        // act
        final result = ProductDescription(desc);
        // assert
        expect(result.value, right(desc));
      },
    );
  });

  group('Category', () {
    test(
      'should pass a valid category',
      () async {
        // arrange
        const category = Categories.Bread;
        // act
        final result = Category(category);
        // assert
        expect(
            result.value, isA<Right<ValueFailure<Categories>, Categories>>());
      },
    );
    test(
      'should pass a valid category string',
      () async {
        // arrange
        const category = 'bread';
        // act
        final result = Category.fromString(category);
        // assert
        expect(
            result.value, isA<Right<ValueFailure<Categories>, Categories>>());
      },
    );

    test(
      'should not pass an invalid category string',
      () async {
        // arrange
        const category = 'invalid';
        // act
        final result = Category.fromString(category);
        // assert
        expect(result.value, isA<Left<ValueFailure<Categories>, Categories>>());
      },
    );
  });

  group('WeightUnit', () {
    test(
      'should contain a valid WeightUnit given a correct enum',
      () async {
        // act
        final result = WeightUnit(WeightUnits.gram);
        // assert
        expect(result.failureOrUnit, right(unit));
      },
    );

    test(
      'should return a valid WeightUnit given a correct string',
      () async {
        // act
        final result = WeightUnit.fromString('gram');
        // assert
        expect(result.failureOrUnit, right(unit));
      },
    );
    test(
      'should return an invalid WeightUnit given an incorrect string',
      () async {
        // act
        final result = WeightUnit.fromString('incorrectUnit');
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
      },
    );
  });

  group('Currency', () {
    test(
      'should contain a valid currency given a correct enum',
      () async {
        // act
        final result = Currency(Currencies.zl);
        // assert
        expect(result.failureOrUnit, right(unit));
      },
    );

    test(
      'should return a valid Currency given a correct string',
      () async {
        // act
        final result = Currency.fromString('zl');
        // assert
        expect(result.failureOrUnit, right(unit));
      },
    );

    test(
      'should return an invalid Currency given an incorrect string',
      () async {
        // act
        final result = Currency.fromString('incorrectCurrency');
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
      },
    );
  });

  group('Barcode', () {
    test(
      'should pass a valid barcode string',
      () async {
        // arrange
        String barcode = 'abc-123-234';
        // act
        final result = Barcode(barcode);
        // assert
        expect(result.value, isA<Right<ValueFailure<String>, String>>());
      },
    );
    test(
      'should not pass a multiline barcode string',
      () async {
        // arrange
        String barcode = 'abc-123-\n234';
        // act
        final result = Barcode(barcode);
        // assert
        expect(result.value, isA<Left<ValueFailure<String>, String>>());
      },
    );
    test(
      'should not pass an empty barcode string',
      () async {
        // arrange
        String barcode = '           ';
        // act
        final result = Barcode(barcode);
        // assert
        expect(result.value, isA<Left<ValueFailure<String>, String>>());
      },
    );
  });
}
