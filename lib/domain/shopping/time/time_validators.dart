import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/shopping/time/primitive_hour.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';
import 'package:shopify_manager/domain/shopping/value_validators.dart';

Either<ValueFailure<PrimitiveHour>, PrimitiveHour> hourValidator(
    PrimitiveHour hour) {
  final hoursValueOrFailure = validateIntegerRange(hour.hours, 0, 12);
  final minutesValueOrFailure = validateIntegerRange(hour.minutes, 0, 59);
  if (hoursValueOrFailure.isRight() && minutesValueOrFailure.isRight()) {
    return right(hour);
  } else {
    return left(ValueFailure.shopping(ShoppingValueFailure.incorrectHour(
        failedValue: hour, twelveHourFormat: true)));
  }
}

Either<ValueFailure<KtList<Hour>>, KtList<Hour>> timeIntervalValidator(
    KtList<Hour> timeInterval) {
  final opening = timeInterval.first().getOrCrash();
  final closing = timeInterval.last().getOrCrash();

  if (opening.am && closing.pm) {
    if (opening.hours == closing.hours && opening.hours == 12) {
      return left(ValueFailure.shopping(
          ShoppingValueFailure.invalidTimeInterval(failedValue: timeInterval)));
    } else {
      return right(timeInterval);
    }
  } else if (opening.pm && closing.am) {
    if (closing.hours == 12) {
      return right(timeInterval);
    } else {
      return left(ValueFailure.shopping(
          ShoppingValueFailure.invalidTimeInterval(failedValue: timeInterval)));
    }
  } else {
    if (opening.hours < closing.hours) {
      return right(timeInterval);
    } else {
      return left(ValueFailure.shopping(
          ShoppingValueFailure.invalidTimeInterval(failedValue: timeInterval)));
    }
  }
}
