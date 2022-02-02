import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/value_validators.dart';

class ShopName extends Name {
  static const maxLength = 40;
  static const minLength = 3;
  @override
  final Either<ValueFailure<String>, String> value;
  factory ShopName(String input) {
    return ShopName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(
              (passedValue) => validateMinStringLength(passedValue, minLength))
          .flatMap(validateSingleLine),
    );
  }
  const ShopName._(this.value);
}
