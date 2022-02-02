import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/shopping/time/primitive_hour.dart';
import 'package:shopify_manager/domain/shopping/time/time_validators.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';

void main() {
  group('hourValidator', () {
    test(
      'should return a valid hour',
      () async {
        // arrange
        final hour = PrimitiveHour.am(hours: 11, minutes: 45);
        // act
        final result = hourValidator(hour);
        // assert
        expect(result, right(hour));
        print(hour.toString());
      },
    );

    test(
      'should return a value failure when hour contains incorrect data',
      () async {
        // arrange
        final invalidHour = PrimitiveHour.am(hours: 13, minutes: 43);
        // act
        final result = hourValidator(invalidHour);
        // assert
        expect(
            result,
            left(ValueFailure.shopping(ShoppingValueFailure.incorrectHour(
                failedValue: invalidHour, twelveHourFormat: true))));
      },
    );
  });

  group('timeIntervalValidator', () {
    test(
      'should return a valid time interval when hours differ only by AM or PM',
      () async {
        // arrange
        final openingHours = [
          for (var i = 0; i < 12; i++)
            Hour(PrimitiveHour.am(hours: i, minutes: 0))
        ];
        final closingHours = [
          for (var i = 0; i < 12; i++)
            Hour(PrimitiveHour.pm(hours: i, minutes: 0))
        ];
        final intervals = [
          for (var i = 0; i < 12; i++)
            KtList.from([openingHours[i], closingHours[i]])
        ];
        // act
        final results = [
          for (var i = 0; i < 12; i++) timeIntervalValidator(intervals[i])
        ];
        // assert
        for (var i = 0; i < 12; i++) {
          expect(results[i], right(intervals[i]));
        }
      },
    );

    test(
      'should return value failure when opening hours is 12 AM and closing hour is 12 PM',
      () async {
        // arrange
        final tOpeningHour = Hour(PrimitiveHour.am(hours: 12, minutes: 0));
        final tclosingHour = Hour(PrimitiveHour.pm(hours: 12, minutes: 0));
        final tTimeInterval = KtList.from([tOpeningHour, tclosingHour]);
        // act
        final result = timeIntervalValidator(tTimeInterval);
        // assert
        expect(
            result,
            left(ValueFailure.shopping(ShoppingValueFailure.invalidTimeInterval(
                failedValue: tTimeInterval))));
      },
    );

    test('should return a valid time interval when given correct intervals',
        () async {
      // arrange
      final openingHours = [
        for (var i = 0; i < 11; i++)
          Hour(PrimitiveHour.am(hours: i, minutes: 0))
      ];
      final closingHours = [
        for (var i = 1; i < 12; i++)
          Hour(PrimitiveHour.am(hours: i, minutes: 0))
      ];
      final intervals = [
        for (var i = 0; i < 11; i++)
          KtList.from([openingHours[i], closingHours[i]])
      ];
      // act
      final results = [
        for (var i = 0; i < 11; i++) timeIntervalValidator(intervals[i])
      ];
      // asssert
      for (var i = 0; i < 11; i++) {
        expect(results[i], right(intervals[i]));
      }
    });

    test(
        'should return a value failure when given incorrect intervals at the same AM value',
        () async {
      // arrange
      final openingHours = [
        for (var i = 1; i < 12; i++)
          Hour(PrimitiveHour.am(hours: i, minutes: 0))
      ];
      final closingHours = [
        for (var i = 0; i < 11; i++)
          Hour(PrimitiveHour.am(hours: i, minutes: 0))
      ];
      final intervals = [
        for (var i = 0; i < 11; i++)
          KtList.from([openingHours[i], closingHours[i]])
      ];
      final expectedResults = [
        for (var i = 0; i < 11; i++)
          left(ValueFailure.shopping(ShoppingValueFailure.invalidTimeInterval(
              failedValue: intervals[i])))
      ];
      // act
      final results = [
        for (var i = 0; i < 11; i++) timeIntervalValidator(intervals[i])
      ];
      // asssert
      for (var i = 0; i < 11; i++) {
        expect(results[i], expectedResults[i]);
      }
    });

    test('should pass all the AM opening hours against 12 PM closing hour', () {
      // arrange
      final openingHours = [
        for (var i = 0; i < 12; i++)
          Hour(PrimitiveHour.am(hours: i, minutes: 0))
      ];
      final closingHour = Hour(PrimitiveHour.pm(hours: 12, minutes: 0));
      final intervals = [
        for (var i = 0; i < 12; i++) KtList.from([openingHours[i], closingHour])
      ];
      // act
      final results = [
        for (var i = 0; i < 12; i++) timeIntervalValidator(intervals[i])
      ];
      // asssert
      for (var i = 0; i < 12; i++) {
        expect(results[i], right(intervals[i]));
      }
    });
    test('should pass all the AM opening hours against 12 AM closing hour', () {
      // arrange
      final openingHours = [
        for (var i = 0; i < 12; i++)
          Hour(PrimitiveHour.am(hours: i, minutes: 0))
      ];
      final closingHour = Hour(PrimitiveHour.am(hours: 12, minutes: 0));
      final intervals = [
        for (var i = 0; i < 12; i++) KtList.from([openingHours[i], closingHour])
      ];
      // act
      final results = [
        for (var i = 0; i < 12; i++) timeIntervalValidator(intervals[i])
      ];
      // asssert
      for (var i = 0; i < 12; i++) {
        expect(results[i], right(intervals[i]));
      }
    });
    test('should pass all the PM opening hours against 12 AM closing hour', () {
      // arrange
      final openingHours = [
        for (var i = 0; i < 12; i++)
          Hour(PrimitiveHour.pm(hours: i, minutes: 0))
      ];
      final closingHour = Hour(PrimitiveHour.am(hours: 12, minutes: 0));
      final intervals = [
        for (var i = 0; i < 12; i++) KtList.from([openingHours[i], closingHour])
      ];
      // act
      final results = [
        for (var i = 0; i < 12; i++) timeIntervalValidator(intervals[i])
      ];
      // asssert
      for (var i = 0; i < 12; i++) {
        expect(results[i], right(intervals[i]));
      }
    });

    test(
        'should return value failures when given correct intervals with incorrect AM values',
        () async {
      // arrange
      final openingHours = [
        for (var i = 0; i < 11; i++)
          Hour(PrimitiveHour.pm(hours: i, minutes: 0))
      ];
      final closingHours = [
        for (var i = 1; i < 12; i++)
          Hour(PrimitiveHour.am(hours: i, minutes: 0))
      ];
      final intervals = [
        for (var i = 0; i < 11; i++)
          KtList.from([openingHours[i], closingHours[i]])
      ];
      final expectedResults = [
        for (var i = 0; i < 11; i++)
          left(ValueFailure.shopping(ShoppingValueFailure.invalidTimeInterval(
              failedValue: intervals[i])))
      ];
      // act
      final results = [
        for (var i = 0; i < 11; i++) timeIntervalValidator(intervals[i])
      ];
      // asssert
      for (var i = 0; i < 11; i++) {
        expect(results[i], expectedResults[i]);
      }
    });
  });
}
