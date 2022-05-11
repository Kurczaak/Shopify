import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

//@JsonSerializable(explicitToJson: true, createFactory: true, createToJson: true)
@freezed
abstract class AddressDto with _$AddressDto {
  const AddressDto._();

  const factory AddressDto({
    required String streetName,
    required String postalCode,
    required String city,
    required String streetNumber,
    required String apartmentNumber,
  }) = _AddressDto;

  factory AddressDto.fromDomain(Address address) {
    return AddressDto(
      streetName: address.streetName.getOrCrash(),
      postalCode: address.postalCode.getOrCrash(),
      city: address.city.getOrCrash(),
      streetNumber: address.streetNumber.getOrCrash(),
      apartmentNumber: address.apartmentNumber.getOrCrash(),
    );
  }

  Address toDomain() {
    return Address(
      apartmentNumber: AddressNumber(apartmentNumber),
      city: CityName(city),
      postalCode: PostalCode(postalCode),
      streetName: StreetName(streetName),
      streetNumber: StreetNumber(streetNumber),
    );
  }

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);
}

// class AddressDtoConverter
//     implements JsonConverter<AddressDto, Map<String, dynamic>> {
//   const AddressDtoConverter();

//   @override
//   Map<String, dynamic> toJson(AddressDto object) => object.toJson();

//   @override
//   AddressDto fromJson(Map<String, dynamic> json) => fromJson(json);
// }
