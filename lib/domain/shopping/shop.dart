import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/shopping/time/week.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';

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
      required String logoUrl}) = _Shop;

  factory Shop.empty() => Shop(
        id: UniqueId(),
        shopName: ShopName(''),
        address: Address.empty(),
        location: Location.empty(),
        workingWeek: Week.empty(),
        logoUrl: '',
      );

//TODO might need to change value to failureOrUnit
  Option<ValueFailure<dynamic>> get failureOption {
    return shopName.failureOrUnit
        .andThen(address.failureOrOption
            .fold(() => right(unit), (failure) => left(failure)))
        .fold((f) => some(f), (_) => none());
  }
}
