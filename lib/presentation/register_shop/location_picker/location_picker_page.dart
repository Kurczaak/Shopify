import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:shopify_manager/application/shop/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/application/shop/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_buttons.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/registration_progress_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:auto_route/auto_route.dart';
import '../../routes/router.gr.dart';

class LocationPickerPage extends StatelessWidget {
  final Completer<GoogleMapController> _controller = Completer();

  LocationPickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ShopLocationPickerBloc, ShopLocationPickerState>(
        listener: (context, state) async {
          final GoogleMapController controller = await _controller.future;
          state.location.fold(
              () => FlushbarHelper.createError(
                  message: 'Could not get the location. Try again'),
              (location) => controller.animateCamera(
                  CameraUpdate.newCameraPosition(
                      CameraPosition(target: location.latLng, zoom: 18))));
        },
        builder: (context, state) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 28.0, left: 28, right: 28, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: RegistrationProgressRow(
                      title: 'Pin Location',
                      subtitle: 'Press the pin to drag',
                      pageNum: 2,
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 77,
                    height: 50,
                    child: ShopifyPrimaryButton(
                        type: state.location.isNone()
                            ? ButtonType.warning
                            : ButtonType.success,
                        onPressed: () async {
                          state.location.fold(() {
                            FlushbarHelper.createError(
                                    message:
                                        'No location chosen. Please try to refresh')
                                .show(context);
                          }, (_) {
                            context.router.navigate(const OpeningHoursRoute());

                            context
                                .read<ShopLocationPickerBloc>()
                                .add(ShopLocationPickerEvent.saved());
                          });
                        },
                        text: 'Next'),
                  )
                ],
              ),
            ),
            Expanded(
              child: context.read<ShopLocationPickerBloc>().state.location.fold(
                    () => Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        children: [
                          const FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Could not find the specified location',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Make sure you have a stable internet connection and the address has been specified correctly',
                            style: TextStyle(
                                fontSize: 15,
                                color: Theme.of(context).secondaryHeaderColor,
                                fontWeight: FontWeight.normal),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 30),
                          ShopifySecondaryButton(
                              onPressed: () async {
                                context
                                    .read<ShopFormBloc>()
                                    .add(const ShopFormEvent.proceeded());
                              },
                              text: 'Refresh')
                        ],
                      ),
                    ),
                    (location) => GoogleMap(
                      zoomControlsEnabled: false,
                      mapType: MapType.hybrid,
                      markers: {
                        Marker(
                          markerId: const MarkerId('1'),
                          draggable: true,
                          position: location.latLng,
                          onDragEnd: (latLng) => context
                              .read<ShopLocationPickerBloc>()
                              .add(ShopLocationPickerEvent.locationChanged(
                                  latitude: latLng.latitude,
                                  longitude: latLng.longitude)),
                        ),
                      },
                      initialCameraPosition:
                          CameraPosition(target: location.latLng, zoom: 18),
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
