// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:dartz/dartz.dart';
import '../core/failures.dart';

Either<ValueFailure<String>, String> validateProductBody(
    String body, int maxLength) {
  if (body.length <= maxLength) return right(body);
  return left(
    ValueFailure.product(
      ProductValueFailure.bodyTooLong(failedValue: body, maxLength: maxLength),
    ),
  );
}
