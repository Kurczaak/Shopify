import 'package:shopify_client/domain/core/failures.dart';
import 'package:shopify_client/domain/core/value_validators.dart';
import 'package:shopify_client/domain/auth/email_address.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

void main() {
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
}
