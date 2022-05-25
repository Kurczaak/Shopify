import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_presentation/shop/shop_recap_column.dart';

import '../utils/image_reader.dart';

void main() async {
  const shopDocumentIdStr = "ad5d60d0-7844-11ec-a53d-03c2fc2917f5";
  const shopNameStr = "Shop Name";
  const streetNameStr = "Street Name";
  const cityNameStr = "Łowicz";
  const postalCodeStr = "99-400";
  const apartmentNumberStr = '69';
  const streetNumberStr = '12A';
  const logoUrlStr = 'https://www.example.com';

  final tShop = Shop(
    id: UniqueId.fromUniqueString(shopDocumentIdStr),
    shopName: ShopName(shopNameStr),
    address: Address(
      apartmentNumber: AddressNumber(apartmentNumberStr),
      streetNumber: StreetNumber(streetNumberStr),
      city: CityName(cityNameStr),
      postalCode: PostalCode(postalCodeStr),
      streetName: StreetName(streetNameStr),
    ),
    location: Location.empty(),
    logoUrl: ShopifyUrl(logoUrlStr),
    workingWeek: Week.empty().copyWith(
        sunday: Day(
            day: DayName.sunday,
            isOpen: false,
            openingInterval: TimeInterval.fullHours(6, 10))),
  );

  final tLogoFile = await getImageFileFromAssets('test_logo.jpg');
  final tShopLogo = ShopLogo(tLogoFile);

  final testWidgetWithoutLogoFile = MaterialApp(
    home: Scaffold(
        body: SizedBox(
      height: 900,
      width: 900,
      child: ShopRecap(
        shop: tShop,
      ),
    )),
  );

  final testWidgetWithLogoFile = MaterialApp(
    home: Scaffold(
        body: SizedBox(
      height: 900,
      width: 900,
      child: ShopRecap(
        shop: tShop,
        fileLogo: tShopLogo,
      ),
    )),
  );

  testWidgets('should display logo file', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);
    await tester.pump(const Duration(seconds: 1));
    expect(find.image(FileImage(tShopLogo.getOrCrash())), findsOneWidget);
  });

  testWidgets('should display store icon', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);
    expect(find.byIcon(Icons.store), findsOneWidget);
  });
  testWidgets('should display location_on icon', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);
    expect(find.byIcon(Icons.location_on), findsOneWidget);
  });

  testWidgets('should display shopName', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);
    expect(find.text(shopNameStr), findsOneWidget);
  });

  testWidgets('should display postalCode', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);
    expect(find.textContaining(postalCodeStr), findsOneWidget);
  });

  testWidgets('should display cityName', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);
    expect(find.textContaining(cityNameStr), findsOneWidget);
  });

  testWidgets('should display streetName', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);
    expect(find.textContaining(streetNameStr), findsOneWidget);
  });

  testWidgets('should display streetNumber', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);
    expect(find.textContaining(streetNumberStr), findsOneWidget);
  });

  testWidgets('should display apartmentNumber', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);
    expect(find.textContaining(apartmentNumberStr), findsOneWidget);
  });

  testWidgets('should display opening days', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);
    await tester.pump(const Duration(milliseconds: 100));
    for (final day in tShop.workingWeek.asList) {
      expect(find.text(day.day.name), findsOneWidget);
    }
  });

  testWidgets('should display opening intervals', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);

    expect(
        find.text(
            tShop.workingWeek.asList.first.openingInterval.getStringOrCrash),
        findsNWidgets(6));
  });

  testWidgets('should display closed day', (tester) async {
    await tester.pumpWidget(testWidgetWithLogoFile);

    expect(find.text('closed'), findsOneWidget);
  });
}
