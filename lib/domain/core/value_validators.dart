// ignore_for_file: import_of_legacy_library_into_null_safe

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
  final RegExp regExp = RegExp(
      '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@\$%^&*-]).{6,}\$');

  if (!regExp.hasMatch(input)) {
    return left(ValueFailure.incorrectPassword(failedValue: input));
  }

  return right(input);
}
