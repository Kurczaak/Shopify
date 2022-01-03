import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';
import 'package:shopify_manager/injection.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_place/google_place.dart' as gp;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopDetailsPage extends StatelessWidget {
  ShopDetailsPage({Key? key}) : super(key: key);
  final _postalCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: const Text(
            'Register Shop',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [Image.asset('images/logo.png')],
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FittedBox(
              fit: BoxFit.contain,
              child: FaIcon(
                FontAwesomeIcons.arrowCircleLeft,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Shop details',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'Enter shop details',
                        style: TextStyle(
                          color: Theme.of(context).secondaryHeaderColor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const Text('1/4'),
                ],
              ),
              const SizedBox(height: 30),
              Form(
                child: Expanded(
                  child: ListView(
                    children: [
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Shop Name'),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'Street'),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Street Number'),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        maxLength: 6,
                        onChanged: (value) {
                          if (value.length == 3 &&
                              !_postalCodeController.text.contains('-')) {
                            final text = _postalCodeController.text;
                            final firstPart = text.substring(0, 2);
                            final secondPart = text.substring(2);
                            _postalCodeController.text =
                                firstPart + '-' + secondPart;
                            _postalCodeController.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: _postalCodeController.text.length));
                          }
                        },
                        controller: _postalCodeController,
                        decoration: const InputDecoration(
                          labelText: 'Postal Code',
                          counterText: '',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(labelText: 'City'),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Next'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
