import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/value_validators.dart';
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
            left(const ValueFailure.shopping(
                ShoppingValueFailure.noAddressNumber(
                    failedValue: noNumberAddress))));
      },
    );
  });

  group('validateHour', () {
    test(
      'should return hours if they match the 12-hour format',
      () async {
        // arrange
        final twelveHourFormatHours = [for (var i = 0; i <= 12; i++) i];
        // act
        final results = [
          for (final hour in twelveHourFormatHours) validateHour(hour)
        ];
        // assert
        for (var i = 0; i <= twelveHourFormatHours.length - 1; i++) {
          expect(results[i], equals(right(twelveHourFormatHours[i])));
        }
      },
    );

    test(
      'should return hours if they matche the 24-hour format',
      () async {
        // arrange
        final twentyFourHourFormatHours = [for (var i = 0; i <= 24; i++) i];
        // act
        final results = [
          for (final hour in twentyFourHourFormatHours)
            validateHour(hour, twelveHourFormat: false)
        ];
        // assert
        for (var i = 0; i <= twentyFourHourFormatHours.length - 1; i++) {
          expect(results[i], equals(right(twentyFourHourFormatHours[i])));
        }
      },
    );

    test(
      'should return a value failure when hour doesn\'t match 12-hour format',
      () async {
        // arrange
        const incorrectHour = 13;
        // act
        final result = validateHour(incorrectHour);
        // assert
        expect(
          result,
          equals(left(const ValueFailure.shopping(
              ShoppingValueFailure.incorrectHour(
                  failedValue: incorrectHour, twelveHourFormat: true)))),
        );
      },
    );

    test(
      'should return a value failure when hour doesn\'t match 24-hour format',
      () async {
        // arrange
        const incorrectHour = 25;
        // act
        final result = validateHour(incorrectHour, twelveHourFormat: false);
        // assert
        expect(
          result,
          equals(left(const ValueFailure.shopping(
              ShoppingValueFailure.incorrectHour(
                  failedValue: incorrectHour, twelveHourFormat: false)))),
        );
      },
    );
  });

  group('validateMinutes', () {
    test(
      'should return minutes if their value falls between 0 and 59 inclusive',
      () async {
        // arrange
        final minutes = [for (var i = 0; i < 60; i++) i];
        // act
        final results = [for (final minute in minutes) validateMinutes(minute)];
        // assert
        for (var i = 0; i <= minutes.length - 1; i++) {
          expect(results[i], equals(right(minutes[i])));
        }
      },
    );

    test(
      'should return a value failure when a minute exceeds the value of 59',
      () async {
        // arrange
        const incorrectMinutes = 60;
        // act
        final result = validateMinutes(incorrectMinutes);
        // assert
        expect(
          result,
          equals(left(const ValueFailure.shopping(
              ShoppingValueFailure.incorrectMinutes(
                  failedValue: incorrectMinutes)))),
        );
      },
    );

    test(
      'should return a value failure when a minute is a negative value',
      () async {
        // arrange
        const incorrectMinutes = -1;
        // act
        final result = validateMinutes(incorrectMinutes);
        // assert
        expect(
          result,
          equals(left(const ValueFailure.shopping(
              ShoppingValueFailure.incorrectMinutes(
                  failedValue: incorrectMinutes)))),
        );
      },
    );
  });
}
