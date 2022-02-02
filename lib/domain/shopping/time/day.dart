import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/time/primitive_hour.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';

part 'day.freezed.dart';

enum DayName {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

@freezed
abstract class Day with _$Day {
  const Day._();

  const factory Day({
    required DayName day,
    required bool isOpen,
    required TimeInterval openingInterval,
  }) = _Day;

  factory Day.empty() {
    return Day(
        day: DayName.monday,
        isOpen: true,
        openingInterval: TimeInterval(Hour.am(8, 0), Hour.pm(10, 0)));
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return openingInterval.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
