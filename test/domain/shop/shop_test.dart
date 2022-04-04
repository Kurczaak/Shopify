import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/core/value_failures.dart';
import 'package:shopify_manager/domain/shop/shop.dart';
import 'package:shopify_manager/domain/shop/time/week.dart';
import 'package:shopify_manager/domain/shop/value_objects.dart';

void main() {
  final tCorrectShop = Shop(
    id: UniqueId(),
    shopName: ShopName('Sklep ABC'),
    address: Address(
      apartmentNumber: AddressNumber('54'),
      streetName: StreetName('Chełmońskiego'),
      city: CityName('Łowicz'),
      postalCode: PostalCode('99-400'),
      streetNumber: StreetNumber('43'),
    ),
    location: Location.empty(),
    logoUrl: 'https://www.example.com',
    workingWeek: Week.empty(),
  );

  group('failureOption', () {
    test(
      'should retrun none when shop contains correct address',
      () async {
        // act
        final failureOption = tCorrectShop.failureOption;
        // assert
        expect(failureOption, equals(none()));
      },
    );

    test(
      'should return some failure when a shop contains incorrect data',
      () async {
        // arrange
        const invalidPostalCode = "99400";
        final tInvalidShop = tCorrectShop.copyWith(
            address: tCorrectShop.address
                .copyWith(postalCode: PostalCode(invalidPostalCode)));
        // act
        final failureOption = tInvalidShop.failureOption;
        // assert
        expect(
          failureOption,
          equals(
            some(const ValueFailure.core(CoreValueFailure.incorrectPostalCode(
                failedValue: invalidPostalCode))),
          ),
        );
      },
    );
  });
}
