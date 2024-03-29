import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/shop/time/day.dart';
import 'package:shopify_domain/shop/time/value_objects.dart';

void main() {
  group('failureOption', () {
    test(
      'should return none when calling if the opening interval is valid',
      () async {
        // arrange
        final validInterval =
            TimeInterval(Hour.fromInt(8, 0), Hour.fromInt(22, 0));
        // act
        final day =
            Day.empty(DayName.monday).copyWith(openingInterval: validInterval);
        // assert
        expect(day.failureOption, equals(none()));
      },
    );
    test(
      'should return some(failure) when calling if the opening interval is invalid',
      () async {
        // arrange
        final invalidInterval =
            TimeInterval(Hour.fromInt(10, 0), Hour.fromInt(8, 0));
        // act
        final day = Day.empty(DayName.monday)
            .copyWith(openingInterval: invalidInterval);
        // assert
        expect(day.failureOption, isA<Some<ValueFailure>>());
      },
    );
  });
  group('failureOrUnit', () {
    test(
      'should return a unit when calling if the opening interval is valid',
      () async {
        // arrange
        final validInterval =
            TimeInterval(Hour.fromInt(8, 0), Hour.fromInt(22, 0));
        // act
        final day =
            Day.empty(DayName.monday).copyWith(openingInterval: validInterval);
        // assert
        expect(day.failureOrUnit, right(unit));
      },
    );
    test(
      'should return some(failure) when calling if the opening interval is invalid',
      () async {
        // arrange
        final invalidInterval =
            TimeInterval(Hour.fromInt(10, 0), Hour.fromInt(8, 0));
        // act
        final day = Day.empty(DayName.monday)
            .copyWith(openingInterval: invalidInterval);
        // assert
        expect(day.failureOrUnit, isA<Left<ValueFailure, Unit>>());
      },
    );
  });
}
