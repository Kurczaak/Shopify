// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/core/errors.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import '../core/failures.dart';
import './value_failures.dart';

Either<ValueFailure<String>, Categories> validateCategoryFromString(
    String input) {
  final lowercaseInput = input.toLowerCase();

  for (final category in Categories.values) {
    final lowercaseCategoryStr = category.name.toLowerCase();
    if (lowercaseInput == lowercaseCategoryStr) return right(category);
  }

  return left(ValueFailure.product(
      ProductValueFailure.incorrectCategoryString(failedValue: input)));
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length > maxLength) {
    return left(
      ValueFailure.product(
        ProductValueFailure.exceedingLength(
            failedValue: input, maxLength: maxLength),
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateMinStringLength(
    String input, int minLength) {
  if (input.length < minLength) {
    return left(
      ValueFailure.product(
        ProductValueFailure.stringTooShort(
            failedValue: input, minLength: minLength),
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.product(
      ProductValueFailure.empty(failedValue: input),
    ));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(
      ValueFailure.product(
        ProductValueFailure.multiline(failedValue: input),
      ),
    );
  } else {
    return right(input);
  }
}

//TODO
//Think of implementation
Either<ValueFailure<String>, String> validatePohtoSelected(String input) {
  throw UnexpectedValueError(
    ValueFailure.product(
      ProductValueFailure.noPhotoSelected(failedValue: input),
    ),
  );
}

Either<ValueFailure<double>, double> validatePositiveValue(double input) {
  if (input <= 0) {
    return left(
      ValueFailure.product(
        ProductValueFailure.nonPositiveValue(failedValue: input),
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<int>, int> validateIntegerRange(
    int input, int minInclusive, int maxInclusive) {
  if (input >= minInclusive && input <= maxInclusive) {
    return right(input);
  } else {
    return left(ValueFailure.product(ProductValueFailure.numberOutsideInterval(
        failedValue: input, min: minInclusive, max: maxInclusive)));
  }
}

Either<ValueFailure<double>, double> validateDoubleRange(
    double input, double minInclusive, double maxInclusive) {
  if (input >= minInclusive && input <= maxInclusive) {
    return right(input);
  } else {
    return left(ValueFailure.product(ProductValueFailure.numberOutsideInterval(
        failedValue: input, min: minInclusive, max: maxInclusive)));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateListLength<T>(
    KtList<T> input, int maxLength,
    {int minLength = 0}) {
  if (input.size <= maxLength && input.size >= minLength) {
    return right(input);
  } else {
    return left(ValueFailure.product(input.size > maxLength
        ? ProductValueFailure.listTooLong(
            failedValue: input, maxLength: maxLength)
        : ProductValueFailure.listTooShort(
            failedValue: input, minLength: minLength)));
  }
}

extension IntegerValidator on String {
  bool get isInt => int.tryParse(this) != null;
}

extension SubstringNumberChecker on String {
  bool get containsNum {
    for (var i = 0; i < length; i++) {
      bool found = this[i].contains(RegExp(r'[0-9]'));
      if (found) return true;
    }
    return false;
  }
}
