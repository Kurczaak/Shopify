import 'package:dartz/dartz.dart';
import 'package:email_validator/email_validator.dart';
import './failures.dart';

// String validateEmailAddress(String input) {
//   return '';
// }

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  final bool isValid = EmailValidator.validate(input);
  if (isValid) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}
