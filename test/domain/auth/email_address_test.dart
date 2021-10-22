import 'package:shopify_client/domain/core/failures.dart';
import 'package:shopify_client/domain/core/value_validators.dart';
import 'package:shopify_client/domain/auth/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EmailAddress Validated Value Object instatiation', () {
    test(
      'should return an instance of EmailAddress when a correct input is given',
      () async {
        // arrange
        String correctEmailString = 'correct@email.com';
        // act
        final result = EmailAddress(correctEmailString);
        // assert
        expect(result, isA<EmailAddress>());
      },
    );
    test(
      'should return an instance of EmailAddress when an incorrect input is given',
      () async {
        // arrange
        String incorrectEmailString = 'incorrectmail.com';
        // act
        final result = EmailAddress(incorrectEmailString);
        // assert
        expect(result, isA<EmailAddress>());
      },
    );

    test(
      'should return an instance of EmailAddress when empty string is given',
      () async {
        // arrange
        String emptyEmailString = '';
        // act
        final result = EmailAddress(emptyEmailString);
        // assert
        expect(result, isA<EmailAddress>());
      },
    );

    test(
      'EmailAddress VVO should hold a correct email String when a correct input is given',
      () async {
        // arrange
        String correctEmailString = 'correct@email.com';
        // act
        final result = EmailAddress(correctEmailString);
        final valueOrFailure = result.value.fold((f) => (f), (r) => r);
        // assert
        expect(valueOrFailure, correctEmailString);
      },
    );

    test(
      'EmailAddress VVO should hold an icorrect email Value Failure when an incorrect input is given',
      () async {
        // arrange
        String incorrectEmailString = 'incorrectmail.com';
        // act
        final result = EmailAddress(incorrectEmailString);
        final valueOrFailure = result.value.fold((f) => (f), (r) => r);
        // assert
        expect(valueOrFailure,
            ValueFailure.invalidEmail(failedValue: incorrectEmailString));
      },
    );
  });
}
