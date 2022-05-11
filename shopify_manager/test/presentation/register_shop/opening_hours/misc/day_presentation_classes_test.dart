import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/shop/time/day.dart';
import 'package:shopify_manager/domain/shop/time/value_objects.dart';
import 'package:shopify_manager/presentation/register_shop/opening_hours/misc/day_presentation_classes.dart';

void main() {
  const openingHour = 8;
  const openingMinutes = 0;
  const closingHour = 22;
  const closingMinutes = 0;

  // TimeInterval
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

  // Day
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
  group('fromDomain', () {
    test(
      'should retrun valid TimeIntervalPrimitive',
      () async {
        // act
        final result = TimeIntervalPrimitive.fromDomain(timeInterval);
        // assert
        expect(result, timeIntervalPrimitive);
      },
    );

    test(
      'should return valid DayPrimitive',
      () async {
        // act
        final result = DayPrimitive.fromDomain(day);
        // assert
        expect(result, dayPrimitive);
      },
    );
  });

  group('toDomain', () {
    test(
      'should return valid TimeInterval',
      () async {
        // act
        final result = timeIntervalPrimitive.toDomain();
        // assert
        expect(result, timeInterval);
      },
    );

    test(
      'should return valid Day',
      () async {
        // act
        final result = dayPrimitive.toDomain();
        // assert
        expect(result, day);
      },
    );
  });
}
