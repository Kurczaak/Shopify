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
      appBar: ProcessAppBar(
        appBar: AppBar(),
        title: 'Register Shop',
        onPressed: () => context.router.pop(),
      ),
      body: BlocProvider<ShopRegistrationBloc>(
        create: (context) {
          final bloc = getIt<ShopRegistrationBloc>();
          shop = bloc.state.shop;
          logo = bloc.state.shopLogo
              .getOrElse(() => throw UnimplementedError('No logo'));
          shopName = shop.shopName.getOrCrash();
          postalCode = shop.address.postalCode.getOrCrash();
          city = shop.address.city.getOrCrash();
          street = shop.address.streetName.getOrCrash();
          streetNumber = shop.address.streetNumber.getOrCrash();
          apartmentNumber = shop.address.apartmentNumber.getOrCrash();
          apartmentNumber != ''
              ? apartmentNumber = '/' + apartmentNumber
              : null;
          week = shop.workingWeek;
          return bloc;
        },
        child: BlocConsumer<ShopRegistrationBloc, ShopRegistrationState>(
          listener: (context, state) {},
          builder: (context, state) => Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RegistrationProgressRow(
                  title: 'Recap',
                  subtitle:
                      'Check your shop details and register it if you\'re ready to go!',
                  pageNum: 5,
                ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$postalCode, $city'),
                        Text('$street $streetNumber$apartmentNumber')
                      ],
                    ),
                  ],
                ),
                logo.value.fold(
                  (f) => Container(),
                  (logo) => SizedBox(
                      height: 150,
                      width: 250,
                      child: FittedBox(
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.contain,
                          child: Image.file(logo))),
                ),
                for (final day in week.asList)
                  Row(
                    children: [
                      Text(day.day.name),
                      Text(day.openingInterval.getStringOrCrash),
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
