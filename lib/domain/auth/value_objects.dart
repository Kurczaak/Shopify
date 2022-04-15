import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/auth/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  static const String incorrectEmailStr = 'incorrect email address';
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  static const String incorrectPasswordStr =
      """Incorrect password. Make sure you password contains small
                 and capital characters, a special character, a numeric character,
                  and is at least 6 characters long.""";

  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}
