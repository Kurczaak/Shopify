import 'package:shopify_client/domain/core/failures.dart';
import 'package:shopify_client/domain/core/value_validators.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

void main() {
  group('Email Validator', () {
    test(
      'should pass a valid email address',
      () async {
        //arrange
        String validEmailString = 'valid@email.com';
        // act
        final result = validateEmailAddress(validEmailString);
        // assert
        expect(result, right(validEmailString));
      },
    );
    test(
      'should return ValueFailure when email is missing "@"',
      () async {
        //arrange
        String invalidEmailString = 'invalidemail.com';
        // act
        final result = validateEmailAddress(invalidEmailString);
        // assert
        expect(result,
            left(ValueFailure.invalidEmail(failedValue: invalidEmailString)));
      },
    );
    test(
      'should return ValueFailure when email is missing "."',
      () async {
        //arrange
        String invalidEmailString = 'invalid@emailcom';
        // act
        final result = validateEmailAddress(invalidEmailString);
        // assert
        expect(result,
            left(ValueFailure.invalidEmail(failedValue: invalidEmailString)));
      },
    );
    test(
      'should return ValueFailure when email is invalid',
      () async {
        //arrange
        String invalidEmailString = 'invalidemailcom';
        // act
        final result = validateEmailAddress(invalidEmailString);
        // assert
        expect(result,
            left(ValueFailure.invalidEmail(failedValue: invalidEmailString)));
      },
    );
  });

  group('Password Validator', () {
    test(
      'should pass a password containing more than 6 characters, capital letters, numerical characters, and special characters',
      () async {
        //arrange
        String correctPassword = '12Correct#';
        // act
        final result = validatePassword(correctPassword);
        // assert
        expect(result, right(correctPassword));
      },
    );
    test(
      'should return a short password ValueFailure when the password is less than 6 characters long',
      () async {
        //arrange
        String shortPasswordString = '1Sho#';
        // act
        final result = validatePassword(shortPasswordString);
        // assert
        expect(result,
            left(ValueFailure.shortPassword(failedValue: shortPasswordString)));
      },
    );

    test(
      'should return a special character ValueFailure when the String doesn\'t contain a special character',
      () async {
        //arrange
        String noSpecialCharacterPassword = '12VaLiD';
        // act
        final result = validatePassword(noSpecialCharacterPassword);
        // assert
        expect(
            result,
            left(ValueFailure.noSpecialCharacterPassword(
                failedValue: noSpecialCharacterPassword)));
      },
    );

    test(
      'should return a no numerical character Value Failure when the String doesn\'t contain a numerical character',
      () async {
        // arrange
        String noNumericalCharacterPassword = 'ThisIsNotValid#';
        // act
        final result = validatePassword(noNumericalCharacterPassword);

        // assert
        expect(
            result,
            left(ValueFailure.noNumericalCharacterPassword(
                failedValue: noNumericalCharacterPassword)));
      },
    );

    test(
      'should return a no capital letter Value Failure when the String doesn\'t contain a capital letter',
      () async {
        // arrange
        String noCapitalLetterPassword = 'thisisinvalidpwd1#';
        // act
        final result = validatePassword(noCapitalLetterPassword);

        // assert
        expect(
            result,
            left(ValueFailure.noCapitalLetterPassword(
                failedValue: noCapitalLetterPassword)));
      },
    );

    test(
      'should return a no small letter Value Failure when the String doesn\'t contain a small letter',
      () async {
        // arrange
        String noSmallLetterPassword = 'THISISINVALID1#';
        // act
        final result = validatePassword(noSmallLetterPassword);

        // assert
        expect(
            result,
            left(ValueFailure.noSmallLetterPassword(
                failedValue: noSmallLetterPassword)));
      },
    );
  });
}
