import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/shop_form.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';
import 'package:meta/meta.dart';

void main() {
  ShopFormBloc shopFormBloc = ShopFormBloc();
  ShopFormState initialState = shopFormBloc.state;

  // Address strings
  const streetNameStr = "Street Name";
  const cityNameStr = "Łowicz";
  const postalCodeStr = "99-400";
  const apartmentNumberStr = '';
  const streetNumberStr = '12A';
  const shopNameStr = 'Sklep Spożywczy ABC';

  final tShop = ShopForm(
    shopName: ShopName(shopNameStr),
    address: Address(
      apartmentNumber: AddressNumber(apartmentNumberStr),
      streetNumber: StreetNumber(streetNumberStr),
      city: CityName(cityNameStr),
      postalCode: PostalCode(postalCodeStr),
      streetName: StreetName(streetNameStr),
    ),
  );

  setUp(() {
    shopFormBloc = ShopFormBloc();
    initialState = shopFormBloc.state;
  });

  group('nameChanged', () {
    String correctShopNameStr = 'Sklep Spożywczy ABC';

    testStateDataIntegrity(
      'should return a state with changed shop name',
      event: ShopFormEvent.nameChanged(correctShopNameStr),
      updatedShop:
          initialState.shop.copyWith(shopName: ShopName(correctShopNameStr)),
    );
  });

  group('streetNameChanged', () {
    String correctStreetNameStr = 'Chełmońskiego';

    testStateDataIntegrity(
      'should return a state with changed street name',
      event: ShopFormEvent.streetNameChanged(correctStreetNameStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(streetName: StreetName(correctStreetNameStr))),
    );
  });

  group('streetNumberChanged', () {
    String correctStreetNumberStr = '11A';

    testStateDataIntegrity(
      'should return a state with changed street number',
      event: ShopFormEvent.streetNumberChanged(correctStreetNumberStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(streetNumber: StreetNumber(correctStreetNumberStr))),
    );
  });
  group('apartmentNumberChanged', () {
    String correctApartmentNumberStr = '11A';

    testStateDataIntegrity(
      'should return a state with changed apartment number',
      event: ShopFormEvent.apartmentNumberChanged(correctApartmentNumberStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address.copyWith(
              apartmentNumber: AddressNumber(correctApartmentNumberStr))),
    );
  });

  group('cityChanged', () {
    String correctCityNameStr = 'Łowicz';

    testStateDataIntegrity(
      'should return a state with changed city name',
      event: ShopFormEvent.cityChanged(correctCityNameStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(city: CityName(correctCityNameStr))),
    );
  });

  group('postalCodeChanged', () {
    String correctPostalCodeStr = '99-400';

    testStateDataIntegrity(
      'should return a state with changed postal code',
      event: ShopFormEvent.postalCodeChanged(correctPostalCodeStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(postalCode: PostalCode(correctPostalCodeStr))),
    );
  });

  group('proceeded ', () {
    ShopFormBloc shopFormBloc = ShopFormBloc();
    ShopFormState initialState = shopFormBloc.state;
    testEmptyFormField(
        'should emit saving and failure states when trying to save a shop with an empty shopName field',
        bloc: ShopFormBloc(),
        seed: initialState.copyWith(
            shop: tShop.copyWith(shopName: ShopName(''))));
    testEmptyFormField(
        'should emit saving and failure states when trying to save a shop with an empty cityName field',
        bloc: ShopFormBloc(),
        seed: initialState.copyWith(
            shop: tShop.copyWith(
                address: tShop.address.copyWith(city: CityName('')))));

    testEmptyFormField(
        'should emit saving and failure states when trying to save a shop with an empty streetName field',
        bloc: ShopFormBloc(),
        seed: initialState.copyWith(
            shop: tShop.copyWith(
                address: tShop.address.copyWith(streetName: StreetName('')))));
    testEmptyFormField(
        'should emit saving and failure states when trying to save a shop with an empty streetNumber field',
        bloc: ShopFormBloc(),
        seed: initialState.copyWith(
            shop: tShop.copyWith(
                address:
                    tShop.address.copyWith(streetNumber: StreetNumber('')))));
    testEmptyFormField(
        'should emit saving and failure states when trying to save a shop with an empty postalCode field',
        bloc: ShopFormBloc(),
        seed: initialState.copyWith(
            shop: tShop.copyWith(
                address: tShop.address.copyWith(postalCode: PostalCode('')))));

    ShopFormState emptyApartmentNumberState = initialState.copyWith(
        shop: tShop.copyWith(
            address:
                tShop.address.copyWith(apartmentNumber: AddressNumber(''))));
  });
}

@isTest
void testEmptyFormField(
  String description, {
  required ShopFormBloc bloc,
  required ShopFormState seed,
}) {
  blocTest(
    description,
    build: () {
      return bloc;
    },
    seed: () => seed,
    act: (ShopFormBloc bloc) => bloc.add(const ShopFormEvent.proceeded()),
    expect: () => [
      seed.copyWith(
        showErrorMessages: true,
      ),
    ],
  );
}

@isTest
void testStateDataIntegrity(
  description, {
  required ShopFormEvent event,
  required ShopForm updatedShop,
}) {
  ShopFormBloc shopFormBloc = ShopFormBloc();
  ShopFormState initialState = shopFormBloc.state;
  blocTest(
    description,
    build: () {
      return shopFormBloc;
    },
    act: (ShopFormBloc bloc) => bloc.add(event),
    expect: () => [
      initialState.copyWith(
        shop: updatedShop,
      )
    ],
  );
}
