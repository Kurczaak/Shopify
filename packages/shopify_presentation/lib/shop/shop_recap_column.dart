import 'package:flutter/material.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:shopify_domain/shop/time/week.dart';
import 'package:shopify_domain/shop/time/day.dart';

class ShopRecap extends StatefulWidget {
  const ShopRecap({Key? key, required this.shop, this.fileLogo})
      : super(key: key);
  final Shop shop;
  final ShopLogo? fileLogo;

  @override
  State<ShopRecap> createState() => _ShopRecapState();
}

class _ShopRecapState extends State<ShopRecap> {
  late Shop shop;
  late ShopLogo? fileLogo;
  late String shopName;
  late String postalCode;
  late String city;
  late String street;
  late String streetNumber;
  late String apartmentNumber;
  late Week week;
  @override
  void initState() {
    shop = widget.shop;
    fileLogo = widget.fileLogo;

    shopName = shop.shopName.getOrCrash();
    postalCode = shop.address.postalCode.getOrCrash();
    city = shop.address.city.getOrCrash();
    street = shop.address.streetName.getOrCrash();
    streetNumber = shop.address.streetNumber.getOrCrash();
    apartmentNumber = shop.address.apartmentNumber.getOrCrash();
    week = shop.workingWeek;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            const SizedBox(width: 5),
            Icon(
              Icons.store,
              color: Theme.of(context).colorScheme.onBackground,
              size: 40,
            ),
            Text(
              shopName,
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.location_on,
              color: Theme.of(context).colorScheme.onBackground,
              size: 50,
            ),
            Expanded(
              child: Text(
                shop.address.toString(),
                style: const TextStyle(fontSize: 20),
                overflow: TextOverflow.visible,
              ),
            ),
            //Text('$postalCode, $city'),
          ],
        ),
        const SizedBox(height: 20),
        if (fileLogo != null)
          fileLogo!.value.fold(
            (f) => Container(),
            (logo) => SizedBox(
              height: 150,
              width: 250,
              child: FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.contain,
                child: Image.file(
                  logo,
                  errorBuilder: (_, __, ___) => Image.asset('images/logo.png'),
                ),
              ),
            ),
          ),
        const SizedBox(height: 20),
        for (final day in week.asList)
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 100,
                child: Text(day.day.name,
                    style: TextStyle(
                        fontWeight:
                            day.isOpen ? FontWeight.bold : FontWeight.normal)),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 150,
                child: Center(
                  child: Text(
                    day.isOpen
                        ? day.openingInterval.getStringOrCrash
                        : 'closed',
                    textAlign: day.isOpen ? TextAlign.start : TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
