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
}
