// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_client/domain/core/errors.dart';
import '../core/failures.dart';
import '../shopping/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length > maxLength) {
    return left(
      ValueFailure.shopping(
        ShoppingValueFailure.exceedingLength(
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
      ValueFailure.shopping(
        ShoppingValueFailure.stringTooShort(
            failedValue: input, minLength: minLength),
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.shopping(
      ShoppingValueFailure.empty(failedValue: input),
    ));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(
      ValueFailure.shopping(
        ShoppingValueFailure.multiline(failedValue: input),
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validatePostalCode(String input) {
  if (input.length != 6 ||
      !input[0].isInt ||
      !input[1].isInt ||
      input[2] != '-' ||
      !input[3].isInt ||
      !input[4].isInt ||
      !input[5].isInt) {
    return left(
      ValueFailure.shopping(
        ShoppingValueFailure.incorrectPostalCode(failedValue: input),
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateContainsNumber(String input) {
  if (input.containsNum) {
    return right(input);
  } else {
    return left(ValueFailure.shopping(
        ShoppingValueFailure.noAddressNumber(failedValue: input)));
  }
}

//TODO
Either<ValueFailure<String>, String> validateShopOpen(String input) {
  throw UnexpectedValueError(
    ValueFailure.shopping(
      ShoppingValueFailure.shopClosedAllWeekLong(failedValue: input),
    ),
  );
}

//TODO
//Think of implementation
Either<ValueFailure<String>, String> validatePohtoSelected(String input) {
  throw UnexpectedValueError(
    ValueFailure.shopping(
      ShoppingValueFailure.noPhotoSelected(failedValue: input),
    ),
  );
}

Either<ValueFailure<double>, double> validatePositiveValue(double input) {
  if (input <= 0) {
    return left(
      ValueFailure.shopping(
        ShoppingValueFailure.nonPositiveValue(failedValue: input),
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
    return left(ValueFailure.shopping(
        ShoppingValueFailure.numberOutsideInterval(
            failedValue: input, min: minInclusive, max: maxInclusive)));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateListLength<T>(
    KtList<T> input, int maxLength,
    {int minLength = 0}) {
  if (input.size <= maxLength && input.size >= minLength) {
    return right(input);
  } else {
    return left(ValueFailure.shopping(input.size > maxLength
        ? ShoppingValueFailure.listTooLong(
            failedValue: input, maxLength: maxLength)
        : ShoppingValueFailure.listTooShort(
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
