import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import 'package:shopify_manager/domain/product/value_failures.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/product/value_validators.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

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
        expect(result, right(Categories.Diary));
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
            left<ValueFailure<String>, Categories>(const ValueFailure.product(
                ProductValueFailure.incorrectCategoryString(
                    failedValue: str))));
      },
    );
  });
}
