import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/shop/value_failures.dart';
import 'package:shopify_domain/shop/time/day.dart';
import 'package:shopify_domain/shop/time/value_objects.dart';
import 'package:shopify_domain/shop/time/week.dart';

void main() {
  final monday = Day.empty(DayName.monday);
  final tuesday = Day.empty(DayName.tuesday);
  final wednesday = Day.empty(DayName.wednesday);
  final thursday = Day.empty(DayName.thursday);
  final friday = Day.empty(DayName.friday);
  final saturday = Day.empty(DayName.saturday);
  final sunday = Day.empty(DayName.sunday);
  final openingHour = Hour.fromInt(22, 0);
  final closingHour = Hour.fromInt(9, 0);
  final invalidIntervalList = KtList<Hour>.from([openingHour, closingHour]);
  final invalidInterval = TimeInterval(openingHour, closingHour);

  group('failureOption', () {
    test(
      'should return none when calling failureOption with correct data',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday,
          wednesday: wednesday,
          thursday: thursday,
          friday: friday,
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(result, none());
      },
    );
    test(
      'should return some failure when calling failureOption with incorrect monday',
      () async {
        // arrange
        final week = Week(
          monday: monday.copyWith(openingInterval: invalidInterval),
          tuesday: tuesday,
          wednesday: wednesday,
          thursday: thursday,
          friday: friday,
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );

    test(
      'should return some failure when calling failureOption with incorrect tuesday',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday.copyWith(openingInterval: invalidInterval),
          wednesday: wednesday,
          thursday: thursday,
          friday: friday,
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return some failure when calling failureOption with incorrect wednesday',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday,
          wednesday: wednesday.copyWith(openingInterval: invalidInterval),
          thursday: thursday,
          friday: friday,
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return some failure when calling failureOption with incorrect thursday',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday,
          wednesday: wednesday,
          thursday: thursday.copyWith(openingInterval: invalidInterval),
          friday: friday,
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return some failure when calling failureOption with incorrect friday',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday,
          wednesday: wednesday,
          thursday: thursday,
          friday: friday.copyWith(openingInterval: invalidInterval),
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return some failure when calling failureOption with incorrect saturday',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday,
          wednesday: wednesday,
          thursday: thursday,
          friday: friday,
          saturday: saturday.copyWith(openingInterval: invalidInterval),
          sunday: sunday,
        );
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );

    test(
      'should return some failure when calling failureOption with incorrect sunday',
      () async {
        // arrange
        final week = Week(
            monday: monday,
            tuesday: tuesday,
            wednesday: wednesday,
            thursday: thursday,
            friday: friday,
            saturday: saturday,
            sunday: sunday.copyWith(
              openingInterval: invalidInterval,
            ));
        // act
        final result = week.failureOption;
        // assert
        expect(
            result,
            some(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
  });

  group('failureOrUnit', () {
    test(
      'should return none when calling failureOrUnit with correct data',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday,
          wednesday: wednesday,
          thursday: thursday,
          friday: friday,
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOrUnit;
        // assert
        expect(result, right(unit));
      },
    );
    test(
      'should return some failure when calling failureOrUnit with incorrect monday',
      () async {
        // arrange
        final week = Week(
          monday: monday.copyWith(openingInterval: invalidInterval),
          tuesday: tuesday,
          wednesday: wednesday,
          thursday: thursday,
          friday: friday,
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOrUnit;
        // assert
        expect(
            result,
            left(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );

    test(
      'should return left failure when calling failureOrUnit with incorrect tuesday',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday.copyWith(openingInterval: invalidInterval),
          wednesday: wednesday,
          thursday: thursday,
          friday: friday,
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOrUnit;
        // assert
        expect(
            result,
            left(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return left failure when calling failureOrUnit with incorrect wednesday',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday,
          wednesday: wednesday.copyWith(openingInterval: invalidInterval),
          thursday: thursday,
          friday: friday,
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOrUnit;
        // assert
        expect(
            result,
            left(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return left failure when calling failureOrUnit with incorrect thursday',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday,
          wednesday: wednesday,
          thursday: thursday.copyWith(openingInterval: invalidInterval),
          friday: friday,
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOrUnit;
        // assert
        expect(
            result,
            left(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return left failure when calling failureOrUnit with incorrect friday',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday,
          wednesday: wednesday,
          thursday: thursday,
          friday: friday.copyWith(openingInterval: invalidInterval),
          saturday: saturday,
          sunday: sunday,
        );
        // act
        final result = week.failureOrUnit;
        // assert
        expect(
            result,
            left(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
    test(
      'should return left failure when calling failureOrUnit with incorrect saturday',
      () async {
        // arrange
        final week = Week(
          monday: monday,
          tuesday: tuesday,
          wednesday: wednesday,
          thursday: thursday,
          friday: friday,
          saturday: saturday.copyWith(openingInterval: invalidInterval),
          sunday: sunday,
        );
        // act
        final result = week.failureOrUnit;
        // assert
        expect(
            result,
            left(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );

    test(
      'should return left failure when calling failureOrUnit with incorrect sunday',
      () async {
        // arrange
        final week = Week(
            monday: monday,
            tuesday: tuesday,
            wednesday: wednesday,
            thursday: thursday,
            friday: friday,
            saturday: saturday,
            sunday: sunday.copyWith(
              openingInterval: invalidInterval,
            ));
        // act
        final result = week.failureOrUnit;
        // assert
        expect(
            result,
            left(ValueFailure.shop(ShopValueFailure.invalidTimeInterval(
                failedValue: invalidIntervalList))));
      },
    );
  });
}
