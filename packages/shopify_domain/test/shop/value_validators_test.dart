import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core/value_failures.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/value_validators.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

void main() {
  group('validateContainsNumber', () {});
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
              const ValueFailure.core(
                CoreValueFailure.exceedingLength(
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
              const ValueFailure.core(
                CoreValueFailure.stringTooShort(
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
            const ValueFailure.core(
              CoreValueFailure.multiline(failedValue: multilineString),
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
            left(const ValueFailure.core(CoreValueFailure.incorrectPostalCode(
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
              ValueFailure.core(CoreValueFailure.incorrectPostalCode(
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
          left(const ValueFailure.core(
            CoreValueFailure.incorrectPostalCode(
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
              ValueFailure.core(CoreValueFailure.incorrectPostalCode(
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
            const ValueFailure.core(
              CoreValueFailure.nonPositive(failedValue: negativeValue),
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
            const ValueFailure.core(
              CoreValueFailure.nonPositive(failedValue: zero),
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

  group('validateContainsNumber', () {
    test(
      'should return address containing a number',
      () async {
        // arrange
        const address = '43A';
        // act
        final result = validateContainsNumber(address);
        // assert
        expect(result, right(address));
      },
    );

    test(
      'should return noAddressNumber ValueFailure when an address doesnt contain a number',
      () async {
        // arrange
        const noNumberAddress = 'BCA';
        // act
        final result = validateContainsNumber(noNumberAddress);
        // assert
        expect(
            result,
            left<ValueFailure<String>, String>(const ValueFailure.core(
                CoreValueFailure.noAddressNumber(
                    failedValue: noNumberAddress))));
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
            left(const ValueFailure.core(CoreValueFailure.numberOutsideInterval(
                failedValue: invalidNumber, min: minNumber, max: maxNumber))));
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
            left(ValueFailure.core(CoreValueFailure.listTooLong(
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
            left(ValueFailure.core(CoreValueFailure.listTooShort(
                failedValue: list, minLength: minLength))));
      },
    );
  });
}
