import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/core/address.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/core/value_failures.dart';
import 'package:shopify_domain/shop.dart';

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
    logoUrl: ShopifyUrl(
        'https://firebasestorage.googleapis.com/v0/b/shopify-app-6d29d.appspot.com/o/images'),
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
      'should return some failure when a shop contains an incorrect ShopName',
      () async {
        // arrange
        const invalidShopName = "";
        final tInvalidShop =
            tCorrectShop.copyWith(shopName: ShopName(invalidShopName));
        // act
        final failureOption = tInvalidShop.failureOption;
        // assert
        expect(
          failureOption,
          equals(
            some(const ValueFailure<String>.core(CoreValueFailure.empty())),
          ),
        );
      },
    );

    test(
      'should return some failure when a shop contains an incorrect Address',
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

    test(
      'should return some failure when a shop contains an incorrect Week',
      () async {
        // arrange
        final invalidWeek = Week.empty().copyWith(
            monday: Day.empty(DayName.monday)
                .copyWith(openingInterval: TimeInterval.fullHours(10, 8)));
        final tInvalidShop = tCorrectShop.copyWith(workingWeek: invalidWeek);

        // act
        final failureOption = tInvalidShop.failureOption;
        // assert
        expect(
          failureOption,
          isA<Some<ValueFailure<dynamic>>>(),
        );
      },
    );

    test(
      'should return some failure when a shop contains an incorrect LogoUrl',
      () async {
        // arrange

        final tInvalidShop = tCorrectShop.copyWith(logoUrl: ShopifyUrl(''));
        // act
        final failureOption = tInvalidShop.failureOption;
        // assert
        expect(
          failureOption,
          isA<Some<ValueFailure<dynamic>>>(),
        );
      },
    );
  });

  group('failureOrUnit', () {
    test(
      'should retrun right(unit) when shop contains correct address',
      () async {
        // act
        final failureOrUnit = tCorrectShop.failureOrUnit;
        // assert
        expect(failureOrUnit, right(unit));
      },
    );

    test(
      'should return left failure when a shop contains an incorrect ShopName',
      () async {
        // arrange
        const invalidShopName = "";
        final tInvalidShop =
            tCorrectShop.copyWith(shopName: ShopName(invalidShopName));
        // act
        final failureOrUnit = tInvalidShop.failureOrUnit;
        // assert
        expect(
          failureOrUnit,
          equals(
            left(const ValueFailure<String>.core(CoreValueFailure.empty())),
          ),
        );
      },
    );

    test(
      'should return left failure when a shop contains an incorrect Address',
      () async {
        // arrange
        const invalidPostalCode = "99400";
        final tInvalidShop = tCorrectShop.copyWith(
            address: tCorrectShop.address
                .copyWith(postalCode: PostalCode(invalidPostalCode)));
        // act
        final failureOrUnit = tInvalidShop.failureOrUnit;
        // assert
        expect(
          failureOrUnit,
          equals(
            left(const ValueFailure.core(CoreValueFailure.incorrectPostalCode(
                failedValue: invalidPostalCode))),
          ),
        );
      },
    );

    test(
      'should return left failure when a shop contains an incorrect Week',
      () async {
        // arrange
        final invalidWeek = Week.empty().copyWith(
            monday: Day.empty(DayName.monday)
                .copyWith(openingInterval: TimeInterval.fullHours(10, 8)));
        final tInvalidShop = tCorrectShop.copyWith(workingWeek: invalidWeek);

        // act
        final failureOrUnit = tInvalidShop.failureOrUnit;
        // assert
        expect(
          failureOrUnit,
          isA<Left<ValueFailure<dynamic>, Unit>>(),
        );
      },
    );

    test(
      'should return left failure when a shop contains an incorrect LogoUrl',
      () async {
        // arrange

        final tInvalidShop = tCorrectShop.copyWith(logoUrl: ShopifyUrl(''));
        // act
        final failureOrUnit = tInvalidShop.failureOrUnit;
        // assert
        expect(
          failureOrUnit,
          isA<Left<ValueFailure<dynamic>, Unit>>(),
        );
      },
    );
  });
}
