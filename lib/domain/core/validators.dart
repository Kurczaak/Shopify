import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_failures.dart';

bool validateMaxLength(String input, int maxLength) {
  if (input.length <= maxLength) return true;
  return false;
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.core(CoreValueFailure.listTooLong(
      failedValue: input,
      maxLength: maxLength,
    )));
  }
}
