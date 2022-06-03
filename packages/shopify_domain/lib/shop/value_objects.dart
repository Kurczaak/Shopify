import 'package:dartz/dartz.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/core/value_validators.dart';

class ShopName extends Name {
  static const maxLength = 40;
  static const minLength = 3;
  @override
  final Either<ValueFailure<String>, String> value;
  factory ShopName(String input) {
    return ShopName._(validateStringNotEmpty(input).flatMap(
      (passedValue) => validateMaxStringLength(passedValue, maxLength)
          .flatMap(
              (passedValue) => validateMinStringLength(passedValue, minLength))
          .flatMap(validateSingleLine),
    ));
  }

  const ShopName._(this.value);
}
