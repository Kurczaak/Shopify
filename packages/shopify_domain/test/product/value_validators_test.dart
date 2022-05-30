import 'package:shopify_domain/product/price.dart';
import 'package:shopify_domain/product/product_categories.dart';
import 'package:shopify_domain/product/value_failures.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/product/value_validators.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/product/weight.dart';

void main() {
  group('validateCategoryFromString', () {
    test(
      'should return Categories.Diary from string',
      () async {
        // arrange
        const str = 'Diary';
        // act
        final result = validateCategoryFromString(str);
        // assert
        expect(result, right(Categories.diary));
      },
    );

    test(
      'should return Value Failure when incorrect string is given',
      () async {
        // arrange
        const str = 'incorrectCategory';
        // act
        final result = validateCategoryFromString(str);
        // assert
        expect(
            result,
            left<ValueFailure<Categories>, Categories>(
                const ValueFailure.product(
                    ProductValueFailure.incorrectCategoryString(
                        failedValue: str))));
      },
    );
  });

  group('validateWeightUnitFromString', () {
    test(
      'should return WeightUnits.kilogram from string',
      () async {
        // arrange
        const str = 'kilogram';
        // act
        final result = validateWeightUnitFromString(str);
        // assert
        expect(result, right(WeightUnits.kilogram));
      },
    );

    test(
      'should return Value Failure when incorrect string is given',
      () async {
        // arrange
        const str = 'incorrectWeightUnit';
        // act
        final result = validateWeightUnitFromString(str);
        // assert
        expect(
            result,
            left<ValueFailure<WeightUnits>, WeightUnits>(
                const ValueFailure.product(
                    ProductValueFailure.incorrectWeightUnitString(
                        failedValue: str))));
      },
    );
  });

  group('validateCurrencyFromString', () {
    test(
      'should return Currency.zl from string',
      () async {
        // arrange
        const str = 'zl';
        // act
        final result = validateCurrencyFromString(str);
        // assert
        expect(result, right(Currencies.zl));
      },
    );

    test(
      'should return Value Failure when incorrect string is given',
      () async {
        // arrange
        const str = 'incorrectCurrency';
        // act
        final result = validateCurrencyFromString(str);
        // assert
        expect(
            result,
            left<ValueFailure<Currencies>, Currencies>(
                const ValueFailure.product(
                    ProductValueFailure.incorrectCurrencyString(
                        failedValue: str))));
      },
    );
  });
}
