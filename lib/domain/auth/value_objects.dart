import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/core/failures.dart';
import 'package:shopify_client/domain/core/value_objects.dart';
import 'package:shopify_client/domain/auth/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}
