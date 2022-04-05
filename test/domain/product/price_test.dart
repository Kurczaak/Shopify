import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/price.dart';

void main() {
  group('failureOption', () {
    test(
      'should return none given valid data',
      () async {
        // arrange
        final tPositiveNum = PositiveNumber(1);

        // act
        final result = Price(price: tPositiveNum);
        // assert
        expect(result.failureOption, none());
      },
    );

    test(
      'should return some failure given invalid price',
      () async {
        // arrange
        final tPositiveNum = PositiveNumber(-1);

        // act
        final result = Price(price: tPositiveNum);
        // assert
        expect(result.failureOption, isA<Some<ValueFailure>>());
      },
    );
  });
}
