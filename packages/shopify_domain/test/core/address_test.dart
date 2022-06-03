import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/core/address.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/core/value_failures.dart';

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
      'should return some with a value failure when an icorrect StreetNumber is given',
      () async {
        //arrange
        final tIncorrectAddress =
            tAddress.copyWith(streetNumber: StreetNumber(''));
        // act
        final failureOrOption = tIncorrectAddress.failureOrOption;
        // assert
        expect(
            failureOrOption,
            equals(some(
                const ValueFailure.core(CoreValueFailure<String>.empty()))));
      },
    );
    test(
      'should return some with a value failure when an icorrect StreetName is given',
      () async {
        //arrange
        final tIncorrectAddress = tAddress.copyWith(streetName: StreetName(''));
        // act
        final failureOrOption = tIncorrectAddress.failureOrOption;
        // assert
        expect(
            failureOrOption,
            equals(some(
                const ValueFailure.core(CoreValueFailure<String>.empty()))));
      },
    );
    test(
      'should return some with a value failure when an icorrect ApartmentNumber is given',
      () async {
        //arrange
        final tIncorrectAddress =
            tAddress.copyWith(apartmentNumber: AddressNumber('1234567'));
        // act
        final failureOrOption = tIncorrectAddress.failureOrOption;
        // assert
        expect(
            failureOrOption,
            equals(some(const ValueFailure.core(
                CoreValueFailure<String>.exceedingLength(
                    failedValue: '1234567',
                    maxLength: AddressNumber.maxLength)))));
      },
    );

    test(
      'should return some with a value failure when an icorrect CityName is given',
      () async {
        //arrange
        final tIncorrectAddress = tAddress.copyWith(city: CityName(''));
        // act
        final failureOrOption = tIncorrectAddress.failureOrOption;
        // assert
        expect(
            failureOrOption,
            equals(some(
                const ValueFailure.core(CoreValueFailure<String>.empty()))));
      },
    );

    test(
      'should return some with a value failure when an icorrect PostalCode is given',
      () async {
        //arrange
        final tIncorrectAddress = tAddress.copyWith(postalCode: PostalCode(''));
        // act
        final failureOrOption = tIncorrectAddress.failureOrOption;
        // assert
        expect(
            failureOrOption,
            equals(some(const ValueFailure.core(
                CoreValueFailure<String>.incorrectPostalCode(
                    failedValue: '')))));
      },
    );
  });

  group('failureOrUnit', () {
    test(
      'should return a unit when a correct Address is given',
      () async {
        // act
        final failureOrUnit = tAddress.failureOrUnit;
        // assert
        expect(failureOrUnit, equals(right(unit)));
      },
    );
    test(
      'should return left with a value failure when an icorrect StreetNumber is given',
      () async {
        //arrange
        final tIncorrectAddress =
            tAddress.copyWith(streetNumber: StreetNumber(''));
        // act
        final failureOrUnit = tIncorrectAddress.failureOrUnit;
        // assert
        expect(
            failureOrUnit,
            equals(left(
                const ValueFailure.core(CoreValueFailure<String>.empty()))));
      },
    );
    test(
      'should return left with a value failure when an icorrect StreetName is given',
      () async {
        //arrange
        final tIncorrectAddress = tAddress.copyWith(streetName: StreetName(''));
        // act
        final failureOrUnit = tIncorrectAddress.failureOrUnit;
        // assert
        expect(
            failureOrUnit,
            equals(left(
                const ValueFailure.core(CoreValueFailure<String>.empty()))));
      },
    );
    test(
      'should return left with a value failure when an icorrect ApartmentNumber is given',
      () async {
        //arrange
        final tIncorrectAddress =
            tAddress.copyWith(apartmentNumber: AddressNumber('1234567'));
        // act
        final failureOrUnit = tIncorrectAddress.failureOrUnit;
        // assert
        expect(
            failureOrUnit,
            equals(left(const ValueFailure.core(
                CoreValueFailure<String>.exceedingLength(
                    failedValue: '1234567',
                    maxLength: AddressNumber.maxLength)))));
      },
    );

    test(
      'should return left with a value failure when an icorrect CityName is given',
      () async {
        //arrange
        final tIncorrectAddress = tAddress.copyWith(city: CityName(''));
        // act
        final failureOrUnit = tIncorrectAddress.failureOrUnit;
        // assert
        expect(
            failureOrUnit,
            equals(left(
                const ValueFailure.core(CoreValueFailure<String>.empty()))));
      },
    );

    test(
      'should return left with a value failure when an icorrect PostalCode is given',
      () async {
        //arrange
        final tIncorrectAddress = tAddress.copyWith(postalCode: PostalCode(''));
        // act
        final failureOrUnit = tIncorrectAddress.failureOrUnit;
        // assert
        expect(
            failureOrUnit,
            equals(left(const ValueFailure.core(
                CoreValueFailure<String>.incorrectPostalCode(
                    failedValue: '')))));
      },
    );
  });
}
