import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';

void main() {
  group('PositiveNumber', () {
    test(
      'should pass a valid positive number input',
      () async {
        // arrange
        const positiveNumber = .1;
        // act
        final result = PositiveNumber(positiveNumber);
        // assert
        expect(result.value, isA<Right<ValueFailure<double>, double>>());
      },
    );

    test(
      'should not pass a nonpositive number',
      () async {
        // arrange
        final zero = 0.0;
        // act
        final result = PositiveNumber(zero);
        // assert
        expect(result.value, isA<Left<ValueFailure<double>, double>>());
      },
    );

    test(
      'should not pass an exceeding number',
      () async {
        // arrange
        final exceedingNum = PositiveNumber.maxPositiveNumber + 1;
        // act
        final result = PositiveNumber(exceedingNum);
        // assert
        expect(result.value, isA<Left<ValueFailure<double>, double>>());
      },
    );
  });
}
