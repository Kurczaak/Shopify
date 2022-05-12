import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core/address.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/location.dart';
import 'package:shopify_domain/shop/time/week.dart';
import 'package:shopify_domain/shop/value_objects.dart';

import '../core/value_objects.dart';

part 'shop.freezed.dart';

@freezed
abstract class Shop implements _$Shop {
  const Shop._();

  const factory Shop(
      {required UniqueId id,
      required ShopName shopName,
      required Address address,
      required Location location,
      required Week workingWeek,
      required ShopifyUrl logoUrl}) = _Shop;

  factory Shop.empty() => Shop(
        id: UniqueId(),
        shopName: ShopName(''),
        address: Address.empty(),
        location: Location.empty(),
        workingWeek: Week.empty(),
        logoUrl: ShopifyUrl(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return shopName.failureOrUnit
        .andThen(address.failureOrOption
            .fold(() => right(unit), (failure) => left(failure)))
        .fold((f) => some(f), (_) => none());
  }

  // Option<String> get failureToStringOption {
  //   return failureOption.fold(
  //       () => none(),
  //       (failure) => failure.maybeWhen(
  //           orElse: () => throw UnexpectedValueError(failure),
  //           shop: (shopFailure) => shopFailure.map(
  //               exceedingLength: exceedingLength,
  //               stringTooShort: stringTooShort,
  //               empty: empty,
  //               multiline: multiline,
  //               incorrectPostalCode: incorrectPostalCode,
  //               shopClosedAllWeekLong: shopClosedAllWeekLong,
  //               noPhotoSelected: noPhotoSelected,
  //               nonPositiveValue: nonPositiveValue,
  //               noAddressNumber: noAddressNumber,
  //               incorrectHour: incorrectHour,
  //               numberOutsideInterval: numberOutsideInterval,
  //               invalidTimeInterval: invalidTimeInterval,
  //               listTooLong: listTooLong,
  //               listTooShort: listTooShort,
  //               emptyList: emptyList,
  //               imageTooBig: imageTooBig,
  //               imageTooSmall: imageTooSmall)));
  // }
}
