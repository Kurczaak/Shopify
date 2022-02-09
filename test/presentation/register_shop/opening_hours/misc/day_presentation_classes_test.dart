import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/shopping/time/day.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';
import 'package:shopify_manager/presentation/register_shop/opening_hours/misc/day_presentation_classes.dart';

void main() {
  group('fromDomain', () {
    const openingHour = 8;
    const openingMinutes = 0;
    const closingHour = 22;
    const closingMinutes = 0;

    const timeIntervalPrimitive = TimeIntervalPrimitive(
      openingHour: openingHour,
      openingMinutes: openingMinutes,
      closingHour: closingHour,
      closingMinutes: closingMinutes,
    );

    final timeInterval = TimeInterval(
      Hour.fromInt(openingHour, openingMinutes),
      Hour.fromInt(closingHour, closingMinutes),
    );

    test(
      'should retrun valid TimeIntervalPrimitive from domain',
      () async {
        // act
        final result = TimeIntervalPrimitive.fromDomain(timeInterval);
        // assert
        expect(result, timeIntervalPrimitive);
      },
    );

    test(
      'should return valid DayPrimitive from domain',
      () async {
        // arrange
        const dayPrimitive = DayPrimitive(
          day: 'Monday',
          isOpen: true,
          timeInterval: timeIntervalPrimitive,
        );

        final day = Day(
          day: DayName.monday,
          isOpen: true,
          openingInterval: timeInterval,
        );
        // act
        final result = DayPrimitive.fromDomain(day);
        // assert
        expect(result, dayPrimitive);
      },
    );
  });
}
