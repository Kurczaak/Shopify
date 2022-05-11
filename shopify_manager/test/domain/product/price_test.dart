import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/price.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';

void main() {
  group('failureOption', () {
    test(
      'should return none given valid data',
      () async {
        // arrange
        final tPositiveNum = PositiveNumber(1);
        final currency = Currency(Currencies.zl);

        // act
        final result = Price(price: tPositiveNum, currency: currency);
        // assert
        expect(result.failureOption, none());
      },
    );

    test(
      'should return some failure given invalid price',
      () async {
        // arrange
        final tPositiveNum = PositiveNumber(-1);
        final currency = Currency(Currencies.zl);

        // act
        final result = Price(price: tPositiveNum, currency: currency);
        // assert
        expect(result.failureOption, isA<Some<ValueFailure>>());
      },
    );

    test(
      'should return none given valid primitives',
      () async {
        // act
        final result = Price.fromPrimitives(21.37, 'zl');
        // assert
        expect(result.failureOption, none());
      },
    );

    test(
      'should return some failure given invalid primitive price',
      () async {
        // act
        final result = Price.fromPrimitives(-21.37, 'zl');
        // assert
        expect(result.failureOption, isA<Some<ValueFailure>>());
      },
    );
    test(
      'should return some failure given invalid currency',
      () async {
        // act
        final result = Price.fromPrimitives(21.37, 'gold');
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
        final tPositiveNum = PositiveNumber(1);
        final currency = Currency(Currencies.zl);

        // act
        final result = Price(price: tPositiveNum, currency: currency);
        // assert
        expect(result.failureOrUnit, right(unit));
      },
    );

    test(
      'should return a failure given invalid price',
      () async {
        // arrange
        final tPositiveNum = PositiveNumber(-1);
        final currency = Currency(Currencies.zl);

        // act
        final result = Price(price: tPositiveNum, currency: currency);
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, dynamic>>());
      },
    );

    test(
      'should return a unit given valid primitives',
      () async {
        // act
        final result = Price.fromPrimitives(21.37, 'zl');
        // assert
        expect(result.failureOrUnit, right(unit));
      },
    );

    test(
      'should return a failure given invalid primitive price',
      () async {
        // act
        final result = Price.fromPrimitives(-21.37, 'zl');
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, dynamic>>());
      },
    );
    test(
      'should return a failure given invalid currency',
      () async {
        // act
        final result = Price.fromPrimitives(21.37, 'gold');
        // assert
        expect(result.failureOrUnit, isA<Left<ValueFailure, dynamic>>());
      },
    );
  });
}
