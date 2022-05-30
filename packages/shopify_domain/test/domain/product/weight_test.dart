import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/value_objects.dart';
import 'package:shopify_domain/product/weight.dart';

void main() {
  group('failureOption', () {
    test(
      'should return none given valid data',
      () async {
        // arrange
        final tNonnegativeNum = NonnegativeNumber(1);
        final tWeightUnit = WeightUnit(WeightUnits.gram);
        // act
        final result = Weight(weight: tNonnegativeNum, weightUnit: tWeightUnit);
        // assert
        expect(result.failureOption, none());
      },
    );

    test(
      'should return some failure given invalid weight',
      () async {
        // arrange
        final tNonnegativeNum = NonnegativeNumber(-1);
        final tWeightUnit = WeightUnit(WeightUnits.gram);
        // act
        final result = Weight(weight: tNonnegativeNum, weightUnit: tWeightUnit);
        // assert
        expect(result.failureOption, isA<Some<ValueFailure>>());
      },
    );

    test(
      'should return none given valid primitive data',
      () async {
        // act
        final result = Weight.fromPrimitives(21.37, 'gram');
        // assert
        expect(result.failureOption, none());
      },
    );

    test(
      'should return some failure given invalid weight primitive',
      () async {
        // act
        final result = Weight.fromPrimitives(-21.37, 'gram');
        // assert
        expect(result.failureOption, isA<Some<ValueFailure>>());
      },
    );

    test(
      'should return some failure given invalid weight unit primitive',
      () async {
        // act
        final result = Weight.fromPrimitives(21.37, 'invalidUnit');
        // assert
        expect(result.failureOption, isA<Some<ValueFailure>>());
      },
    );
  });

  group('failureOrUnit', () {
    test(
      'should return a unit given valid data',
      () async {
        // arrange
        final tNonnegativeNum = NonnegativeNumber(1);
        final tWeightUnit = WeightUnit(WeightUnits.gram);
        // act
        final result = Weight(weight: tNonnegativeNum, weightUnit: tWeightUnit);
        // assert
        expect(result.failureOrUnit, right(unit));
      },
    );

    test(
      'should return some failure given invalid weight',
      () async {
        // arrange
        final tNonnegativeNum = NonnegativeNumber(-1);
        final tWeightUnit = WeightUnit(WeightUnits.gram);
        // act
        final result = Weight(weight: tNonnegativeNum, weightUnit: tWeightUnit);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );

    test(
      'should return none given valid primitive data',
      () async {
        // act
        final result = Weight.fromPrimitives(21.37, 'gram');
        // assert
        expect(result.failureOrUnit, right(unit));
      },
    );

    test(
      'should return some failure given invalid weight primitive',
      () async {
        // act
        final result = Weight.fromPrimitives(-21.37, 'gram');
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );

    test(
      'should return some failure given invalid weight unit primitive',
      () async {
        // act
        final result = Weight.fromPrimitives(21.37, 'invalidUnit');
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );
  });
}
