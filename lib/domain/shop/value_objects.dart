import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/errors.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/core/value_validators.dart';

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

  Option<String> get stringFailureOption {
    return value.fold(
        (failure) => failure.maybeWhen(
            orElse: () => throw UnexpectedValueError(failure),
            core: (coreFailure) => some(coreFailure.maybeMap(
                  orElse: () => 'Unexpected value failure',
                  empty: (_) => 'Shop name should not be empty',
                  exceedingLength: (_) =>
                      'Shop name is too long. Max $maxLength characters',
                  multiline: (_) => 'Shop name cannot be multiline',
                  stringTooShort: (_) =>
                      'Shop name is too short. Min $minLength characters',
                ))),
        (_) => none());
  }

  const ShopName._(this.value);
}
