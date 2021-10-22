import 'package:dartz/dartz.dart';
import 'package:email_validator/email_validator.dart';
import './failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  final bool isValid = EmailValidator.validate(input);
  if (isValid) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length < 6) {
    return left(ValueFailure.shortPassword(failedValue: input));
  }

  return right(input);
}
