import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/time/primitive_hour.dart';
import 'package:shopify_manager/domain/shopping/time/time_validators.dart';

class Hour extends ValueObject<PrimitiveHour> {
  @override
  final Either<ValueFailure<PrimitiveHour>, PrimitiveHour> value;

  factory Hour(PrimitiveHour input) {
    return Hour._(hourValidator(input));
  }

  factory Hour.fromInt(int hours, int minutes) =>
      Hour(PrimitiveHour(hours: hours, minutes: minutes));

  const Hour._(this.value);
}

class TimeInterval extends ValueObject<KtList<Hour>> {
  @override
  final Either<ValueFailure<KtList<Hour>>, KtList<Hour>> value;
  factory TimeInterval(Hour openingHour, Hour closingHour) {
    return TimeInterval._(
        timeIntervalValidator(KtList<Hour>.from([openingHour, closingHour])));
  }

  factory TimeInterval.fullHours(int opening, int closing) {
    final openingHour = Hour.fromInt(opening, 0);
    final closingHour = Hour.fromInt(closing, 0);
    return TimeInterval(openingHour, closingHour);
  }

  const TimeInterval._(this.value);
}
