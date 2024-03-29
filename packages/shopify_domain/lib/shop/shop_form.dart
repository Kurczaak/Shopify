import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core/address.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/shop/value_objects.dart';

part 'shop_form.freezed.dart';

@freezed
abstract class ShopForm implements _$ShopForm {
  const ShopForm._();

  const factory ShopForm({
    required ShopName shopName,
    required Address address,
  }) = _ShopForm;

  factory ShopForm.empty() => _ShopForm(
        shopName: ShopName(''),
        address: Address.empty(),
      );

//TODO might need to change value to failureOrUnit
  Option<ValueFailure<dynamic>> get failureOption {
    return shopName.failureOrUnit
        .andThen(address.failureOrOption
            .fold(() => right(unit), (failure) => left(failure)))
        .fold((f) => some(f), (_) => none());
  }
}
