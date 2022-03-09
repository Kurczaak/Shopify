import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:shopify_manager/domain/core/errors.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/shopping/shop.dart';
import 'package:shopify_manager/domain/shopping/time/week.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/hour_dropdown_picker.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/registration_progress_bar.dart';
import 'package:shopify_manager/presentation/routes/router.dart';
import 'package:shopify_manager/presentation/routes/router.dart';
import 'package:shopify_manager/presentation/routes/router.dart';
import 'package:shopify_manager/presentation/sign_in/widgets/sign_up_form.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:auto_route/auto_route.dart';
import './routes/router.gr.dart';
import 'package:shopify_manager/domain/shopping/time/day.dart';

class RegistrationRecapPage extends StatefulWidget {
  RegistrationRecapPage({Key? key}) : super(key: key);

  @override
  State<RegistrationRecapPage> createState() => _RegistrationRecapPageState();
}

class _RegistrationRecapPageState extends State<RegistrationRecapPage> {
  Completer<GoogleMapController> _controller = Completer();

  late Shop shop;
  late ShopLogo logo;
  late String shopName;
  late String postalCode;
  late String city;
  late String street;
  late String streetNumber;
  late String apartmentNumber;
  late Week week;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ShopRegistrationBloc, ShopRegistrationState>(
        listener: (context, state) {},
        builder: (context, state) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const RegistrationProgressRow(
              title: 'Recap',
              subtitle:
                  'Check your shop details and register it if you\'re ready to go!',
              pageNum: 5,
            ),
            ShopRecap(
              logo: context
                  .read<ShopRegistrationBloc>()
                  .state
                  .shopLogo
                  .getOrElse(() => throw UnimplementedError()),
              shop: context.read<ShopRegistrationBloc>().state.shop,
            ),
            const Spacer(),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  getIt<ShopRegistrationBloc>()
                      .add(const ShopRegistrationEvent.shopSaved());
                },
                child: const Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopRecap extends StatefulWidget {
  const ShopRecap({Key? key, required this.shop, required this.logo})
      : super(key: key);
  final Shop shop;
  final ShopLogo logo;

  @override
  State<ShopRecap> createState() => _ShopRecapState();
}

class _ShopRecapState extends State<ShopRecap> {
  late Shop shop;
  late ShopLogo logo;
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
    logo = widget.logo;
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
            Icon(
              Icons.store,
              color: Theme.of(context).secondaryHeaderColor,
            ),
            Text(shopName),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.location_on,
                color: Theme.of(context).secondaryHeaderColor),
            Text(shop.address.toString()),
            //Text('$postalCode, $city'),
          ],
        ),
        const SizedBox(height: 20),
        widget.logo.value.fold(
          (f) => Container(),
          (logo) => SizedBox(
              height: 150,
              width: 250,
              child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.contain,
                  child: Image.file(logo))),
        ),
        const SizedBox(height: 20),
        for (final day in week.asList)
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 100,
                child: Text(day.day.name),
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
