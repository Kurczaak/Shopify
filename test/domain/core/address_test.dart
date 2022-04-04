import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/core/value_failures.dart';

void main() {
  final tAddress = Address(
    apartmentNumber: AddressNumber(''),
    city: CityName('Łowicz'),
    postalCode: PostalCode('99-400'),
    streetName: StreetName('Łowicka'),
    streetNumber: StreetNumber('12a'),
  );
  group('failureOrOption', () {
    test(
      'should return none when a correct Address is given',
      () async {
        // act
        final failureOrOption = tAddress.failureOrOption;
        // assert
        expect(failureOrOption, equals(none()));
      },
    );
    test(
      'should return some with a value failure when an icorrect Address is given',
      () async {
        //arrange
        final tIncorrectAddress =
            tAddress.copyWith(streetNumber: StreetNumber(''));
        // act
        final failureOrOption = tIncorrectAddress.failureOrOption;
        // assert
        expect(
            failureOrOption,
            equals(some(const ValueFailure.core(
                CoreValueFailure.empty(failedValue: '')))));
      },
    );
  });
}
