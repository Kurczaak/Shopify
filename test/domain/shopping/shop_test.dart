import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/shopping/shop.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';

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
            some(const ValueFailure.shopping(
                ShoppingValueFailure.incorrectPostalCode(
                    failedValue: invalidPostalCode))),
          ),
        );
      },
    );
  });
}
