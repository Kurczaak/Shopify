import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';

import '../core/value_objects.dart';

part 'shop.freezed.dart';

@freezed
abstract class Shop implements _$Shop {
  const Shop._();

  const factory Shop({
    required UniqueId id,
    required ShopName shopName,
    required StreetName streetName,
    required PostalCode postalCode,
    required CityName city,
  }) = _Shop;

  factory Shop.empty() => Shop(
        id: UniqueId(),
        shopName: ShopName(''),
        streetName: StreetName(''),
        postalCode: PostalCode(''),
        city: CityName(''),
      );

//TODO might need to change value to failureOrUnit
  Option<ValueFailure<dynamic>> get failureOption {
    return shopName.value
        .andThen(streetName.value.andThen(postalCode.value.andThen(city.value)))
        .fold((f) => some(f), (_) => none());
  }
}
