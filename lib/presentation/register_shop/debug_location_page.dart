import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
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
  Completer<GoogleMapController> _controller = Completer();
  late Marker pin;

  late CameraPosition camPos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProcessAppBar(
        appBar: AppBar(),
        title: 'Register Shop',
        onPressed: () => context.router.pop(),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<ShopRegistrationBloc>(
              create: (context) => getIt<ShopRegistrationBloc>()),
          BlocProvider<ShopLocationPickerBloc>(
            create: (context) {
              final bloc = getIt<ShopLocationPickerBloc>();
              final locationOption = bloc.state.location;

              locationOption
                  .fold(() => pin = const Marker(markerId: MarkerId('1')),
                      (location) {
                camPos = CameraPosition(
                  target: LatLng(location.latitude, location.longitude),
                  zoom: 18,
                );
                pin = Marker(
                    markerId: const MarkerId('1'),
                    position: LatLng(location.latitude, location.longitude),
                    draggable: true,
                    onDrag: (latLng) => bloc.add(
                        ShopLocationPickerEvent.locationChanged(
                            latitude: latLng.latitude,
                            longitude: latLng.longitude)));
              });
              return bloc;
            },
          ),
        ],
        child: BlocConsumer<ShopLocationPickerBloc, ShopLocationPickerState>(
          listener: (context, state) {
            if (state.saved) {
              context.router.push(OpeningHoursRoute());
            }
          },
          builder: (context, state) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
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
                        onPressed: () {
                          context
                              .read<ShopLocationPickerBloc>()
                              .add(ShopLocationPickerEvent.saved());
                        },
                        child: const Text('Next'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GoogleMap(
                  mapType: MapType.hybrid,
                  markers: {pin},
                  initialCameraPosition: state.location.fold(
                      () => camPos,
                      (a) => CameraPosition(
                          target: LatLng(a.latitude, a.longitude), zoom: 18)),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
