import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/shopping/time/primitive_hour.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';

void main() {
  group('Hour', () {
    final tPrimitiveHour = PrimitiveHour.am(hours: 11, minutes: 30);
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
            left(ValueFailure.shopping(ShoppingValueFailure.incorrectHour(
                failedValue: tInvalidHour, twelveHourFormat: true))));
      },
    );
  });
}
