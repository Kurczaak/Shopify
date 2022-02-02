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

  factory Hour.am(int hours, int minutes) {
    return Hour._(
        hourValidator(PrimitiveHour(hours: hours, minutes: minutes, am: true)));
  }
  factory Hour.pm(int hours, int minutes) {
    return Hour._(hourValidator(
        PrimitiveHour(hours: hours, minutes: minutes, am: false)));
  }

  const Hour._(this.value);
}

class TimeInterval extends ValueObject<KtList<Hour>> {
  @override
  final Either<ValueFailure<KtList<Hour>>, KtList<Hour>> value;
  factory TimeInterval(Hour openingHour, Hour closingHour) {
    return TimeInterval._(
        timeIntervalValidator(KtList<Hour>.from([openingHour, closingHour])));
  }

  const TimeInterval._(this.value);
}
