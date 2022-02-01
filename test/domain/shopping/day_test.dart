import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/shopping/working_hour.dart';
import 'package:shopify_manager/domain/shopping/day.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';

void main() {
  final tOpeningHour = WorkingHour.pm(hour: Hour(8), minutes: Minute(0));
  final tClosingHour = WorkingHour.pm(hour: Hour(20), minutes: Minute(0));

  // group('failureOption', () {
  //   test(
  //     'should retrun none when WorkingHour is correct',
  //     () async {
  //       // act
  //       final failureOption = tWorkingHour.failureOption;
  //       // assert
  //       expect(failureOption, equals(none()));
  //     },
  //   );

  //   test(
  //     'should return some failure when a WorkingHour contains incorrect data',
  //     () async {
  //       // arrange
  //       const invalidHour = 15;
  //       final tInvalidWorkingHour =
  //           tWorkingHour.copyWith(hour: Hour(invalidHour));
  //       // act
  //       final failureOption = tInvalidWorkingHour.failureOption;
  //       // assert
  //       expect(
  //         failureOption,
  //         equals(
  //           some(ValueFailure.shopping(ShoppingValueFailure.incorrectHour(
  //               failedValue: invalidHour,
  //               twelveHourFormat: tInvalidWorkingHour.twelveHourFormat))),
  //         ),
  //       );
  //     },
  //   );
  // });
}
