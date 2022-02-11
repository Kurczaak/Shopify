import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/hour_dropdown_picker.dart';
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

class DebugPage extends StatelessWidget {
  const DebugPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProcessAppBar(
        appBar: AppBar(),
        title: 'Register Shop',
      ),
      body: BlocProvider(
        create: (context) => getIt<ShopLocationPickerBloc>(),
        child: BlocConsumer<ShopLocationPickerBloc, ShopLocationPickerState>(
          listener: (context, state) {
            if (state.location.isNone()) {
              getIt<ShopLocationPickerBloc>().add(
                  ShopLocationPickerEvent.locationChanged(
                      latitude: 52.106232, longitude: 19.946056));
            }
          },
          builder: (context, ShopLocationPickerState state) => LoadingOverlay(
            opacity: .3,
            color: Colors.black,
            isLoading: state.location.isNone(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MapSample(
                onDragEnd: (LatLng value) {
                  getIt<ShopLocationPickerBloc>().add(
                    ShopLocationPickerEvent.locationChanged(
                        latitude: value.latitude, longitude: value.longitude),
                  );
                },
                markers: state.location.isNone()
                    ? Set()
                    : <Marker>{
                        Marker(
                          markerId: MarkerId('xd'),
                          draggable: true,
                          position: LatLng(
                              state.location
                                  .getOrElse(
                                      () => throw UnimplementedError('xd'))
                                  .latitude,
                              state.location
                                  .getOrElse(
                                      () => throw UnimplementedError('xd'))
                                  .longitude),
                          onDrag: (value) {
                            getIt<ShopLocationPickerBloc>().add(
                                ShopLocationPickerEvent.locationChanged(
                                    latitude: value.latitude,
                                    longitude: value.longitude));
                          },
                        )
                      },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MapSample extends StatefulWidget {
  final void Function(LatLng) onDragEnd;
  final Set<Marker> markers;

  const MapSample({Key? key, required this.onDragEnd, required this.markers})
      : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  late void Function(LatLng) onDragEnd;
  late Set<Marker> markers;

  void initState() {
    super.initState();
    markers = widget.markers;
    onDragEnd = widget.onDragEnd;
    onDragEnd(LatLng(52.106232, 19.946056));
  }

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(52.106232, 19.946056),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(52.106232, 19.946056),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        mapToolbarEnabled: true,
        myLocationEnabled: true,
        markers: markers,
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: Text('To the lake!'),
      //   icon: Icon(Icons.directions_boat),
      // ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
