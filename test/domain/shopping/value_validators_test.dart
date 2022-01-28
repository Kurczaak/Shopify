import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/value_validators.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

void main() {
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
              const ValueFailure.shopping(
                ShoppingValueFailure.exceedingLength(
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
              const ValueFailure.shopping(
                ShoppingValueFailure.stringTooShort(
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
              const ValueFailure.shopping(
                ShoppingValueFailure.empty(failedValue: emptyString),
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
            const ValueFailure.shopping(
              ShoppingValueFailure.multiline(failedValue: multilineString),
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

  group('validatePostalCode', () {
    test(
      'should return a ValueFailure when the postal code doesnt conain a dash "-"',
      () async {
        // arrange
        const noDashPostalCode = '994000';
        // act
        final result = validatePostalCode(noDashPostalCode);
        // assert
        expect(
            result,
            left(const ValueFailure.shopping(
                ShoppingValueFailure.incorrectPostalCode(
                    failedValue: noDashPostalCode))));
      },
    );

    test(
      'should return a ValueFailure when the postal code has an incorrect format',
      () async {
        // arrange
        final incorrectFormatPostalCodes = [
          '9-9400',
          '999-400',
          '99-40',
          '99-4000',
        ];
        // act
        final results = [];
        final expectedResults = [];
        for (var incorrectPC in incorrectFormatPostalCodes) {
          results.add(validatePostalCode(incorrectPC));
          expectedResults.add(
            left(
              ValueFailure.shopping(ShoppingValueFailure.incorrectPostalCode(
                  failedValue: incorrectPC)),
            ),
          );
        }
        // assert
        expect(results, expectedResults);
      },
    );

    test(
      'should return a VauleFailure when the postal code has more than 6 characters',
      () async {
        // arrange
        const incorrectPostalCode = '99-4000';
        // act
        final result = validatePostalCode(incorrectPostalCode);

        // assert
        expect(
          result,
          left(const ValueFailure.shopping(
            ShoppingValueFailure.incorrectPostalCode(
                failedValue: incorrectPostalCode),
          )),
        );
      },
    );
    test(
      'should return a VauleFailure when the postal code contains invalid characters',
      () async {
        final incorrectFormatPostalCodes = [
          'PL-400',
          '9.-400',
          '9A-400',
          '99--00',
          'AB-CDE',
        ];
        // act
        final results = [];
        final expectedResults = [];
        for (var incorrectPC in incorrectFormatPostalCodes) {
          results.add(validatePostalCode(incorrectPC));
          expectedResults.add(
            left(
              ValueFailure.shopping(ShoppingValueFailure.incorrectPostalCode(
                  failedValue: incorrectPC)),
            ),
          );
        }
        // assert
        expect(results, expectedResults);
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
            const ValueFailure.shopping(
              ShoppingValueFailure.nonPositiveValue(failedValue: negativeValue),
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
            const ValueFailure.shopping(
              ShoppingValueFailure.nonPositiveValue(failedValue: zero),
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
}
