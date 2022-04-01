import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shop/failures.dart';
import 'package:shopify_manager/domain/shop/time/primitive_hour.dart';
import 'package:shopify_manager/domain/shop/time/time_validators.dart';
import 'package:shopify_manager/domain/shop/time/value_objects.dart';

void main() {
  group('hourValidator', () {
    test(
      'should return a valid hour',
      () async {
        // arrange
        const hour = PrimitiveHour(hours: 11, minutes: 45);
        // act
        final result = hourValidator(hour);
        // assert
        expect(result, right(hour));
      },
    );

    test(
      'should return a value failure when hour contains incorrect data',
      () async {
        // arrange
        const invalidHour = PrimitiveHour(hours: 24, minutes: 43);
        // act
        final result = hourValidator(invalidHour);
        // assert
        expect(
            result,
            left(const ValueFailure.shop(ShopValueFailure.incorrectHour(
                failedValue: invalidHour, twelveHourFormat: true))));
      },
    );
  });

  group('timeIntervalValidator', () {
    test('should return a valid time interval when given correct intervals',
        () async {
      // arrange
      final openingHours = [
        for (var i = 0; i < 23; i++) Hour(PrimitiveHour(hours: i, minutes: 0))
      ];
      final closingHours = [
        for (var i = 1; i < 24; i++) Hour(PrimitiveHour(hours: i, minutes: 0))
      ];
      final intervals = [
        for (var i = 0; i < 23; i++)
          KtList.from([openingHours[i], closingHours[i]])
      ];
      // act
      final results = [
        for (var i = 0; i < 23; i++) timeIntervalValidator(intervals[i])
      ];
      // asssert
      for (var i = 0; i < 23; i++) {
        expect(results[i], right(intervals[i]));
      }
    });

    test('should return a value failure when given incorrect intervals',
        () async {
      // arrange
      final openingHours = [
        for (var i = 1; i < 24; i++) Hour(PrimitiveHour(hours: i, minutes: 0))
      ];
      final closingHours = [
        for (var i = 0; i < 23; i++) Hour(PrimitiveHour(hours: i, minutes: 0))
      ];
      final intervals = [
        for (var i = 0; i < 23; i++)
          KtList.from([openingHours[i], closingHours[i]])
      ];
      final expectedResults = [
        for (var i = 0; i < 23; i++)
          left(ValueFailure.shop(
              ShopValueFailure.invalidTimeInterval(failedValue: intervals[i])))
      ];
      // act
      final results = [
        for (var i = 0; i < 23; i++) timeIntervalValidator(intervals[i])
      ];
      // asssert
      for (var i = 0; i < 23; i++) {
        expect(results[i], expectedResults[i]);
      }
    });
  });
}
