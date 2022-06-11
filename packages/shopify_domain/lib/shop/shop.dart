import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core/address.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/location/location.dart';
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

  Either<ValueFailure, Unit> get failureOrUnit {
    return shopName.failureOrUnit.andThen(address.failureOrUnit
        .andThen(workingWeek.failureOrUnit.andThen(logoUrl.failureOrUnit)));
  }

  Option<ValueFailure<dynamic>> get failureOption =>
      failureOrUnit.fold((failure) => some(failure), (_) => none());
}
