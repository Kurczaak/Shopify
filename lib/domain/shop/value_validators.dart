// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/shop/time/week.dart';
import '../core/failures.dart';
import 'value_failures.dart';

//TODO
Either<ValueFailure<Week>, Week> validateShopOpen(Week input) {
  bool _hasOpenDays = false;
  for (final day in input.asList) {
    if (day.isOpen) _hasOpenDays = true;
  }

  if (_hasOpenDays) {
    return (right(input));
  } else {
    return left(ValueFailure.shop(
      ShopValueFailure.shopClosedAllWeekLong(failedValue: input),
    ));
  }
}

//TODO
//Think of implementation
