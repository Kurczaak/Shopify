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
  group(
    'validateMaxStringLength',
    () {
      const shortString = '12345';
      const exceedingLengthString = '123456';
      const maxLength = 5;
      test(
        'should return string that does not exceed max length',
        () async {
          // act
          final result = validateMaxStringLength(shortString, maxLength);
          // assert
          expect(result, right(shortString));
        },
      );
      test(
        'should return ValueFailure<String> when string exceeds max length',
        () async {
          // act
          final result =
              validateMaxStringLength(exceedingLengthString, maxLength);
          // assert
          expect(result, isA<Left<ValueFailure, String>>());
        },
      );
      test(
        'should return exceedingLength ValueFailure when string exceeds max length',
        () async {
          // act
          final result =
              validateMaxStringLength(exceedingLengthString, maxLength);
          // assert
          expect(
            result,
            left(
              const ValueFailure.product(
                ProductValueFailure.exceedingLength(
                    failedValue: exceedingLengthString, maxLength: maxLength),
              ),
            ),
          );
        },
      );
    },
  );

  group(
    'validateMinStringLength',
    () {
      const tooShortString = '12345';
      const longEnoughString = '123456';
      const minLength = 6;
      test(
        'should return string that exceeds min length',
        () async {
          // act
          final result = validateMinStringLength(longEnoughString, minLength);
          // assert
          expect(result, right(longEnoughString));
        },
      );
      test(
        'should return ValueFailure<String> when string is shorter than minLength',
        () async {
          // act
          final result = validateMinStringLength(tooShortString, minLength);
          // assert
          expect(result, isA<Left<ValueFailure, String>>());
        },
      );
      test(
        'should return tooShortString ValueFailure when string exceeds max length',
        () async {
          // act
          final result = validateMinStringLength(tooShortString, minLength);
          // assert
          expect(
            result,
            left(
              const ValueFailure.product(
                ProductValueFailure.stringTooShort(
                    failedValue: tooShortString, minLength: minLength),
              ),
            ),
          );
        },
      );
    },
  );

  group(
    'validateStringNotEmpty',
    () {
      const emptyString = '';
      const nonEmptyString = 'this is a non empty string';

      test(
        'should return ValueFailure when a string is empty',
        () async {
          // act
          final result = validateStringNotEmpty(emptyString);
          // assert
          expect(result, isA<Left<ValueFailure, String>>());
        },
      );

      test(
        'should return empty ValueFailure when a string is empty',
        () async {
          // act
          final result = validateStringNotEmpty(emptyString);
          // assert
          expect(
            result,
            left(
              const ValueFailure.product(
                ProductValueFailure.empty(failedValue: emptyString),
              ),
            ),
          );
        },
      );

      test(
        'should return a valid, non empty string',
        () async {
          // act
          final result = validateStringNotEmpty(nonEmptyString);
          // assert
          expect(result, right(nonEmptyString));
        },
      );
    },
  );

  group('validateSingleLine', () {
    const multilineString = 'this \n is a multiline string';
    const singleLineString = 'this is a single line string';
    test(
      'should return ValueFailure when a string is multiline',
      () async {
        // act
        final result = validateSingleLine(multilineString);
        // assert
        expect(result, isA<Left<ValueFailure, String>>());
      },
    );
    test(
      'should return a multiline ValueFailure when a string is multiline',
      () async {
        // act
        final result = validateSingleLine(multilineString);
        // assert
        expect(
          result,
          left(
            const ValueFailure.product(
              ProductValueFailure.multiline(failedValue: multilineString),
            ),
          ),
        );
      },
    );
    test(
      'should return the string when it is a single line string',
      () async {
        // act
        final result = validateSingleLine(singleLineString);
        // assert
        expect(
          result,
          right(singleLineString),
        );
      },
    );
  });

  group('validatePositiveValue', () {
    test(
      'should return a ValueFailure when input is a negative value',
      () async {
        // arrange
        const negativeValue = -.01;
        // act
        final result = validatePositiveValue(negativeValue);
        // assert
        expect(
          result,
          left(
            const ValueFailure.product(
              ProductValueFailure.nonPositiveValue(failedValue: negativeValue),
            ),
          ),
        );
      },
    );
    test(
      'should return a ValueFailure when input is 0',
      () async {
        // arrange
        const zero = 0.0;
        // act
        final result = validatePositiveValue(zero);
        // assert
        expect(
          result,
          left(
            const ValueFailure.product(
              ProductValueFailure.nonPositiveValue(failedValue: zero),
            ),
          ),
        );
      },
    );

    test(
      'should return input when it\'s a positive number',
      () async {
        // arrange
        const positiveValue = .01;
        // act
        final result = validatePositiveValue(positiveValue);
        // assert
        expect(
          result,
          right(positiveValue),
        );
      },
    );
  });

  group('validateIntegerRange', () {
    const minNumber = 0;
    const maxNumber = 59;
    test(
      'should return number when it falls within the bottom threshold',
      () async {
        // act
        final result = validateIntegerRange(minNumber, minNumber, maxNumber);
        // assert
        expect(result, right(minNumber));
      },
    );
    test(
      'should return number when it falls within the top threshold',
      () async {
        // act
        final result = validateIntegerRange(maxNumber, minNumber, maxNumber);
        // assert
        expect(result, right(maxNumber));
      },
    );

    test(
      'should return a value failure when it falls outside the interval boundaries',
      () async {
        //arrange
        const invalidNumber = 60;
        // act
        final result =
            validateIntegerRange(invalidNumber, minNumber, maxNumber);
        // assert
        expect(
            result,
            left(const ValueFailure.product(
                ProductValueFailure.numberOutsideInterval(
                    failedValue: invalidNumber,
                    min: minNumber,
                    max: maxNumber))));
      },
    );
  });

  group('validateListLength', () {
    test(
      'should return the list if it doesn\'t exceed maxLength',
      () async {
        // arrange
        final list = KtList.from([1, 2, 3, 4]);
        // act
        final result = validateListLength(list, 4);
        // assert
        expect(result, right(list));
      },
    );

    test(
      'should return ValueFailure when the list exceeds maxLength',
      () async {
        // arrange
        final list = KtList.from([1, 2, 3, 4]);
        const maxLength = 3;
        // act
        final result = validateListLength(list, maxLength);
        // assert
        expect(
            result,
            left(ValueFailure.product(ProductValueFailure.listTooLong(
                failedValue: list, maxLength: maxLength))));
      },
    );
    test(
      'should return the list if it exceeds minLength',
      () async {
        // arrange
        final list = KtList.from([1, 2, 3, 4]);
        // act
        final result = validateListLength(list, 4, minLength: 4);
        // assert
        expect(result, right(list));
      },
    );
    test(
      'should return ValueFailure when the list is shorter than minLength',
      () async {
        // arrange
        final list = KtList.from([1, 2, 3, 4]);
        const minLength = 5;
        // act
        final result = validateListLength(list, 10, minLength: minLength);
        // assert
        expect(
            result,
            left(ValueFailure.product(ProductValueFailure.listTooShort(
                failedValue: list, minLength: minLength))));
      },
    );
  });
}
