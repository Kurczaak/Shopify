import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_failures.dart';

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

Either<ValueFailure<KtList<T>>, KtList<T>> validateListLength<T>(
    KtList<T> input, int maxLength,
    {int minLength = 0}) {
  if (input.size <= maxLength && input.size >= minLength) {
    return right(input);
  } else {
    return left(ValueFailure.core(input.size > maxLength
        ? CoreValueFailure.listTooLong(failedValue: input, maxLength: maxLength)
        : CoreValueFailure.listTooShort(
            failedValue: input, minLength: minLength)));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateListNotEmpty<T>(
  KtList<T> input,
) {
  if (input.size > 0) {
    return right(input);
  } else {
    return left(ValueFailure.core(CoreValueFailure.empty(
      failedValue: input,
    )));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length > maxLength) {
    return left(
      ValueFailure.core(
        CoreValueFailure.exceedingLength(
            failedValue: input, maxLength: maxLength),
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateMinStringLength(
    String input, int minLength,
    {bool countWhiteChars = true}) {
  late String stringInput;
  if (!countWhiteChars) {
    stringInput = input.replaceAll(' ', '');
    stringInput = stringInput.replaceAll('\n', '');
  } else {
    stringInput = input;
  }
  if (stringInput.length < minLength) {
    return left(
      ValueFailure.core(
        CoreValueFailure.stringTooShort(
            failedValue: input, minLength: minLength),
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  final noWhiteCharsStr = input.replaceAll(' ', '');
  if (noWhiteCharsStr.isEmpty) {
    return left(ValueFailure.core(
      CoreValueFailure.empty(failedValue: input),
    ));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(
      ValueFailure.core(
        CoreValueFailure.multiline(failedValue: input),
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
      ValueFailure.core(
        CoreValueFailure.incorrectPostalCode(failedValue: input),
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
    return left(ValueFailure.core(
        CoreValueFailure.noAddressNumber(failedValue: input)));
  }
}

// //TODO
// Either<ValueFailure<String>, String> validatePohtoSelected(String input) {
//   throw UnexpectedValueError(
//     ValueFailure.shop(
//       ShopValueFailure.noPhotoSelected(failedValue: input),
//     ),
//   );
// }

Either<ValueFailure<double>, double> validatePositiveValue(double input) {
  if (input <= 0) {
    return left(
      ValueFailure.core(
        CoreValueFailure.nonPositive(failedValue: input),
      ),
    );
  } else {
    return right(input);
  }
}

Either<ValueFailure<double>, double> validateDoubleRange(
    double input, double minInclusive, double maxInclusive) {
  if (input >= minInclusive && input <= maxInclusive) {
    return right(input);
  } else {
    return left(ValueFailure.core(CoreValueFailure.numberOutsideInterval(
        failedValue: input, min: minInclusive, max: maxInclusive)));
  }
}

Either<ValueFailure<int>, int> validateIntegerRange(
    int input, int minInclusive, int maxInclusive) {
  if (input >= minInclusive && input <= maxInclusive) {
    return right(input);
  } else {
    return left(ValueFailure.core(CoreValueFailure.numberOutsideInterval(
        failedValue: input, min: minInclusive, max: maxInclusive)));
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
