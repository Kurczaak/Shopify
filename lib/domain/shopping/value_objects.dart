import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/value_validators.dart';

class ShopName extends Name {
  static const maxLength = 40;
  @override
  final Either<ValueFailure<String>, String> value;
  factory ShopName(String input) {
    return ShopName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateSingleLine)
          .flatMap(validateStringNotEmpty),
    );
  }
  const ShopName._(this.value);
}
