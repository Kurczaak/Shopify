import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
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
import '../routes/router.gr.dart';

class DebugLocationPage extends StatefulWidget {
  DebugLocationPage({Key? key}) : super(key: key);

  @override
  State<DebugLocationPage> createState() => _DebugLocationPageState();
}

class _DebugLocationPageState extends State<DebugLocationPage> {
  final Completer<GoogleMapController> _controller = Completer();
  late LatLng pinPosition;

  CameraPosition camPos = CameraPosition(target: Location.empty().latLng);

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
              child: GoogleMap(
                mapType: MapType.hybrid,
                markers:
                    context.read<ShopLocationPickerBloc>().state.location.fold(
                          () => {},
                          (a) => {
                            Marker(
                              markerId: const MarkerId('1'),
                              draggable: true,
                              position: LatLng(a.latitude, a.longitude),
                              onDragEnd: (latLng) => context
                                  .read<ShopLocationPickerBloc>()
                                  .add(ShopLocationPickerEvent.locationChanged(
                                      latitude: latLng.latitude,
                                      longitude: latLng.longitude)),
                            ),
                          },
                        ),
                initialCameraPosition: context
                    .read<ShopLocationPickerBloc>()
                    .state
                    .location
                    .fold(() => camPos,
                        (a) => CameraPosition(target: a.latLng, zoom: 18)),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
