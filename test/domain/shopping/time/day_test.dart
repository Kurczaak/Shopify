import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/time/day.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';

void main() {
  test(
    'should return none when calling failureOption if opening interval is valid',
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
    'should return some(failure) when calling failureOption if opening interval is invalid',
    () async {
      // arrange
      final invalidInterval =
          TimeInterval(Hour.fromInt(10, 0), Hour.fromInt(8, 0));
      // act
      final day =
          Day.empty(DayName.monday).copyWith(openingInterval: invalidInterval);
      // assert
      expect(day.failureOption, isA<Some<ValueFailure>>());
    },
  );
}
