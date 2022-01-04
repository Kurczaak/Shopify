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

class Name extends ValueObject<String> {
  static const maxLength = 100;
  @override
  final Either<ValueFailure<String>, String> value;
  factory Name(String input) {
    return Name._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateSingleLine)
          .flatMap(validateStringNotEmpty),
    );
  }
  const Name._(this.value);
}

class PostalCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory PostalCode(String input) {
    return PostalCode._(validatePostalCode(input));
  }
  const PostalCode._(this.value);
}
