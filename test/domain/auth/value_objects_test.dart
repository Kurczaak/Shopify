import 'package:shopify_client/domain/core/failures.dart';
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

  group('Password Validated Value Object instatiation', () {
    test(
      'should return an instance of Password when a correct input is given',
      () async {
        // arrange
        String correctPasswordString = '12VaLiD#';
        // act
        final result = Password(correctPasswordString);
        // assert
        expect(result, isA<Password>());
      },
    );
    test(
      'should return an instance of Password when an incorrect input is given',
      () async {
        // arrange
        String incorrectPasswordString = 'shrt';
        // act
        final result = Password(incorrectPasswordString);
        // assert
        expect(result, isA<Password>());
      },
    );

    test(
      'should return an instance of Password when empty string is given',
      () async {
        // arrange
        String emptyPassword = '';
        // act
        final result = Password(emptyPassword);
        // assert
        expect(result, isA<Password>());
      },
    );

    test(
      'Password VVO should hold a correct password String when a correct input is given',
      () async {
        // arrange
        String correctPasswordString = '12VaLiD#';
        // act
        final result = Password(correctPasswordString);
        final valueOrFailure = result.value.fold((f) => (f), (r) => r);
        // assert
        expect(valueOrFailure, correctPasswordString);
      },
    );

    test(
      'Password VVO should hold a short password Value Failure when the String is less than 6 characters long',
      () async {
        // arrange
        String shortPasswordString = 'shrt';
        // act
        final result = Password(shortPasswordString);
        final valueOrFailure = result.value.fold((f) => (f), (r) => r);
        // assert
        expect(valueOrFailure,
            ValueFailure.shortPassword(failedValue: shortPasswordString));
      },
    );

    test(
      'Password VVO should hold an empty Value Failure when the String is empty',
      () async {
        // arrange
        String emptyString = '0';
        // act
        final result = Password(emptyString);
        final valueOrFailure = result.value.fold((f) => (f), (r) => r);
        // assert
        expect(valueOrFailure, ValueFailure.empty(failedValue: emptyString));
      },
    );

    test(
      'Password VVO should hold a no special character Value Failure when the String doesn\'t contain a special character',
      () async {
        // arrange
        String noSpecialCharacterPassword = '12VaLiD';
        // act
        final result = Password(noSpecialCharacterPassword);
        final valueOrFailure = result.value.fold((f) => (f), (r) => r);
        // assert
        expect(
            valueOrFailure,
            ValueFailure.noSpecialCharacterPassword(
                failedValue: noSpecialCharacterPassword));
      },
    );

    test(
      'Password VVO should hold a no numerical character Value Failure when the String doesn\'t contain a numerical character',
      () async {
        // arrange
        String noNumericalCharacterPassword = 'ThisIsNotValid#';
        // act
        final result = Password(noNumericalCharacterPassword);
        final valueOrFailure = result.value.fold((f) => (f), (r) => r);
        // assert
        expect(
            valueOrFailure,
            ValueFailure.noNumericalCharacterPassword(
                failedValue: noNumericalCharacterPassword));
      },
    );

    test(
      'Password VVO should hold a no capital letter Value Failure when the String doesn\'t contain a capital letter',
      () async {
        // arrange
        String noCapitalLetterPassword = 'thisisinvalidpwd1#';
        // act
        final result = Password(noCapitalLetterPassword);
        final valueOrFailure = result.value.fold((f) => (f), (r) => r);
        // assert
        expect(
            valueOrFailure,
            ValueFailure.noCapitalLetterPassword(
                failedValue: noCapitalLetterPassword));
      },
    );
  });
}
