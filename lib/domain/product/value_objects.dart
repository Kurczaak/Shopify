import 'package:shopify_manager/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/value_validators.dart';

class ProductName extends Name {
  static const maxLength = 50;
  static const minLength = 3;

  @override
  final Either<ValueFailure<String>, String> value;
  factory ProductName(String input) {
    return ProductName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(
              (passedValue) => validateMinStringLength(passedValue, minLength))
          .flatMap(validateSingleLine),
    );
  }
  const ProductName._(this.value);
}

class BrandName extends Name {
  static const maxLength = 50;
  static const minLength = 3;

  @override
  final Either<ValueFailure<String>, String> value;
  factory BrandName(String input) {
    return BrandName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(
              (passedValue) => validateMinStringLength(passedValue, minLength))
          .flatMap(validateSingleLine),
    );
  }
  const BrandName._(this.value);
}

class Weight extends ValueObject<int> {
  static const int maxWeight = 99999;

  @override
  final Either<ValueFailure<int>, int> value;
  factory Weight(int input) {
    return Weight._(
      validateIntegerRange(input, 1, maxWeight),
    );
  }
  const Weight._(this.value);
}
