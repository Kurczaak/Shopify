import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shop/value_failures.dart';
import 'package:shopify_manager/domain/shop/time/primitive_hour.dart';
import 'package:shopify_manager/domain/shop/time/value_objects.dart';

void main() {
  group('Hour', () {
    const tPrimitiveHour = PrimitiveHour(hours: 11, minutes: 30);
    test(
      'should return a valid Hour when given correct data',
      () async {
        // act
        final hour = Hour(tPrimitiveHour);
        // assert
        expect(hour.value, right(tPrimitiveHour));
      },
    );

    test(
      'should return value failure when given incorrect input',
      () async {
        // arrange
        final tInvalidHour = tPrimitiveHour.copyWith(minutes: 61);
        // act
        final hour = Hour(tInvalidHour);
        // assert
        expect(
            hour.value,
            left(ValueFailure.shop(ShopValueFailure.incorrectHour(
                failedValue: tInvalidHour, twelveHourFormat: true))));
      },
    );
  });

  group('TimeInterval', () {
    test(
      'should return a correct TimeInterval',
      () async {
        // arrange
        final openingHour = Hour.fromInt(8, 0);
        final closingHour = Hour.fromInt(22, 0);
        final list = KtList<Hour>.from([openingHour, closingHour]);
        // act
        final result = TimeInterval(openingHour, closingHour);
        // assert
        expect(result.value, right(list));
      },
    );

    test(
      'should return a value failure given incorrect intervals',
      () async {
        // arrange
        final openingHour = Hour.fromInt(22, 0);
        final closingHour = Hour.fromInt(8, 0);
        final list = KtList<Hour>.from([openingHour, closingHour]);
        // act
        final result = TimeInterval(openingHour, closingHour);
        // assert
        expect(
            result.value,
            left(ValueFailure.shop(
                ShopValueFailure.invalidTimeInterval(failedValue: list))));
      },
    );
  });
}
