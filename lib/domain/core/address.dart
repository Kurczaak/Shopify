import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
abstract class Address with _$Address {
  const Address._();

  const factory Address({
    required StreetName streetName,
    required StreetNumber streetNumber,
    required AddressNumber apartmentNumber,
    required CityName city,
    required PostalCode postalCode,
  }) = _Address;

  factory Address.empty() {
    return Address(
        streetName: StreetName(''),
        streetNumber: StreetNumber(''),
        apartmentNumber: AddressNumber(''),
        city: CityName(''),
        postalCode: PostalCode(''));
  }

  Option<ValueFailure<dynamic>> get failureOrOption {
    return streetName.value
        .andThen(streetNumber.value.andThen(apartmentNumber.value
            .andThen(city.value.andThen(postalCode.value))))
        .fold((f) => some(f), (_) => none());
  }

  @override
  String toString() {
    final streetStr =
        streetName.value.fold((l) => l.toString(), (r) => r.toString());
    final streetNumberStr =
        streetNumber.value.fold((l) => l.toString(), (r) => r.toString());
    String apartmentNumberStr =
        apartmentNumber.value.fold((l) => l.toString(), (r) => r.toString());
    if (apartmentNumberStr != '') {
      apartmentNumberStr = "\\" + apartmentNumberStr;
    }
    final cityStr = city.value.fold((l) => l.toString(), (r) => r.toString());
    final postalCodeStr =
        postalCode.value.fold((l) => l.toString(), (r) => r.toString());
    print(
        'Searching location: $postalCodeStr $cityStr $streetStr $streetNumberStr$apartmentNumberStr');
    return '$postalCodeStr $cityStr $streetStr $streetNumberStr$apartmentNumberStr';
  }
}
