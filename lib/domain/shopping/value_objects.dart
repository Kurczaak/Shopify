import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/shopping/value_validators.dart';
import 'package:shopify_manager/main.dart';

//TODO remove if necessary
// class ProductDescription extends ValueObject<String> {
//   @override
//   final Either<ValueFailure<String>, String> value;
//   factory ProductDescription(String input) {
//     return ProductDescription._(
//       left(
//         ValueFailure.shopping(
//           ShoppingValueFailure.exceedingLength(
//               failedValue: input, maxLength: 12),
//         ),
//       ),
//     );
//   }
//   const ProductDescription._(this.value);
// }
class AddressNumber extends ValueObject<String> {
  static const maxNumber = 999;
  static const maxLength = 5;

  @override
  // TODO: implement value
  final Either<ValueFailure<String>, String> value;
  factory AddressNumber(String input) {
    return AddressNumber._(validateMaxStringLength(input, maxLength)
        .flatMap(validateSingleLine)
        .flatMap(validateStringNotEmpty));
  }

  const AddressNumber._(this.value);
}

abstract class Name extends ValueObject<String> {
  static const maxLength = 10;
  @override
  Either<ValueFailure<String>, String> get value;
  const Name();
}

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

class StreetName extends Name {
  static const maxLength = 50;
  @override
  final Either<ValueFailure<String>, String> value;
  factory StreetName(String input) {
    return StreetName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateSingleLine)
          .flatMap(validateStringNotEmpty),
    );
  }
  const StreetName._(this.value);
}

class CityName extends Name {
  static const maxLength = 80;
  @override
  final Either<ValueFailure<String>, String> value;
  factory CityName(String input) {
    return CityName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateSingleLine)
          .flatMap(validateStringNotEmpty),
    );
  }
  const CityName._(this.value);
}

class PostalCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory PostalCode(String input) {
    return PostalCode._(validatePostalCode(input));
  }
  const PostalCode._(this.value);
}
