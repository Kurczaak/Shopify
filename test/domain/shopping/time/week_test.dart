import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/shopping/time/day.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';
import 'package:shopify_manager/domain/shopping/time/week.dart';

void main() {
  final monday = Day.empty().copyWith(day: DayName.monday);
  final tuesday = Day.empty().copyWith(day: DayName.tuesday);
  final wednesday = Day.empty().copyWith(day: DayName.wednesday);
  final thursday = Day.empty().copyWith(day: DayName.thursday);
  final friday = Day.empty().copyWith(day: DayName.friday);
  final saturday = Day.empty().copyWith(day: DayName.saturday);
  final sunday = Day.empty().copyWith(day: DayName.sunday);
  test(
    'should return none when calling failureOption with correct data',
    () async {
      // arrange
      final week =
          Week(monday, tuesday, wednesday, thursday, friday, saturday, sunday);
      // act
      final result = week.failureOption;
      // assert
      expect(result, none());
    },
  );

  group('failureOption failures', () {
    // arrange
    final openingHour = Hour.pm(9, 0);
    final closingHour = Hour.am(9, 0);
    final invalidIntervalList = KtList<Hour>.from([openingHour, closingHour]);
    final invalidInterval = TimeInterval(openingHour, closingHour);
    test(
      'should return some failure when calling failureOption with incorrect monday',
      () async {
        // arrange
        final week = Week(
          monday.copyWith(openingInterval: invalidInterval),
          tuesday,
          wednesday,
          thursday,
          friday,
          saturday,
          sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shopping(ShoppingValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );

    test(
      'should return some failure when calling failureOption with incorrect tuesday',
      () async {
        // arrange
        final week = Week(
          monday,
          tuesday.copyWith(openingInterval: invalidInterval),
          wednesday,
          thursday,
          friday,
          saturday,
          sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shopping(ShoppingValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return some failure when calling failureOption with incorrect wednesday',
      () async {
        // arrange
        final week = Week(
          monday,
          tuesday,
          wednesday.copyWith(openingInterval: invalidInterval),
          thursday,
          friday,
          saturday,
          sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shopping(ShoppingValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return some failure when calling failureOption with incorrect thursday',
      () async {
        // arrange
        final week = Week(
          monday,
          tuesday,
          wednesday,
          thursday.copyWith(openingInterval: invalidInterval),
          friday,
          saturday,
          sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shopping(ShoppingValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return some failure when calling failureOption with incorrect friday',
      () async {
        // arrange
        final week = Week(
          monday,
          tuesday,
          wednesday,
          thursday,
          friday.copyWith(openingInterval: invalidInterval),
          saturday,
          sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shopping(ShoppingValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return some failure when calling failureOption with incorrect saturday',
      () async {
        // arrange
        final week = Week(
          monday,
          tuesday,
          wednesday,
          thursday,
          friday,
          saturday.copyWith(openingInterval: invalidInterval),
          sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shopping(ShoppingValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );

    test(
      'should return some failure when calling failureOption with incorrect sunday',
      () async {
        // arrange
        final week = Week(
            monday,
            tuesday,
            wednesday,
            thursday,
            friday,
            saturday,
            sunday.copyWith(
              openingInterval: invalidInterval,
            ));
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shopping(ShoppingValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
  });
}
