import 'package:flutter/material.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/registration_progress_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:auto_route/auto_route.dart';
import '../../routes/router.gr.dart';

class LocationPickerPage extends StatelessWidget {
  final Completer<GoogleMapController> _controller = Completer();
  late LatLng pinPosition;

  LocationPickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ShopLocationPickerBloc, ShopLocationPickerState>(
        listener: (context, state) async {
          final GoogleMapController controller = await _controller.future;
          state.location.fold(
              () => null,
              (location) => controller.animateCamera(
                  CameraUpdate.newCameraPosition(
                      CameraPosition(target: location.latLng, zoom: 18))));
        },
        builder: (context, state) => Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: RegistrationProgressRow(
                    title: 'Pin Location',
                    subtitle: 'Make sure the pin is placed accordingly',
                    pageNum: 2,
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      context.router.navigate(OpeningHoursRoute());

                      context
                          .read<ShopLocationPickerBloc>()
                          .add(ShopLocationPickerEvent.saved());
                    },
                    child: const Text('Next'),
                  ),
                ),
              ],
            ),
            Expanded(
              child: context.read<ShopLocationPickerBloc>().state.location.fold(
                    () => Column(
                      children: [
                        Text(
                            'Could not find the specified location. Make sure you have an stable internet connection or the address has been specified correctly'),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () async {
                              FocusManager.instance.primaryFocus?.unfocus();
                              await context.router
                                  .navigate(LocationPickerRoute());
                              context
                                  .read<ShopFormBloc>()
                                  .add(const ShopFormEvent.proceeded());
                            },
                            child: const Text('Next'),
                          ),
                        ),
                      ],
                    ),
                    (location) => GoogleMap(
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
