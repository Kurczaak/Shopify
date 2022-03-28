import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:shopify_client/application/shop_watcher/shop_watcher_bloc.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/domain/core/location/location.dart';
import 'package:shopify_client/injection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shopify_client/presentation/core/widgets/shopify_appbar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _controller = Completer();
  double radius = .5;
  Set<Marker> markers = {};
  CameraPosition? cameraPosition;
  GoogleMapController? mapController;
  LatLng center = Location.empty().latLng;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShopWatcherBloc>(
      create: (context) => getIt<ShopWatcherBloc>()
        ..add(ShopWatcherEvent.watchNearbyShops(
          radius: radius,
        )),
      child: BlocConsumer<ShopWatcherBloc, ShopWatcherState>(
        listener: (context, state) {
          if (state.isLoaded()) {
            final newMarkers = state
                .asLoaded()
                .shops
                .asList()
                .map((shop) => Marker(
                    infoWindow: InfoWindow(
                        title: shop.shopName.getOrCrash(),
                        snippet: shop.address.toString()),
                    markerId: MarkerId(shop.id.getOrCrash()),
                    position: shop.location.latLng))
                .toSet();

            if (cameraPosition == null) {
              mapController?.animateCamera(CameraUpdate.newCameraPosition(
                  CameraPosition(
                      target: state.asLoaded().center.latLng, zoom: 15)));
            }

            setState(() {
              center = state.asLoaded().center.latLng;
              markers = newMarkers;
              cameraPosition = CameraPosition(
                  target: state.asLoaded().center.latLng, zoom: 15);
            });
          }
        },
        builder: (context, state) {
          return Scaffold(
            drawer: Drawer(
              child: ListView(children: [Card()]),
            ),
            appBar: ShopifyAppBar(
              appBar: AppBar(),
              title: 'Shopify Client',
            ),
            body: state.whenOrElse(
              initial: () => Container(),
              error: (_) => Text('Error'),
              orElse: (_) => Column(
                children: [
                  SizedBox(height: 28),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Slider(
                            min: 0.1,
                            max: 5,
                            value: radius,
                            onChanged: (value) {
                              setState(() {
                                radius = value;
                              });
                            },
                            onChangeEnd: (value) {
                              context.read<ShopWatcherBloc>().add(
                                  ShopWatcherEvent.watchShopsByLocation(
                                      radius: radius,
                                      location: state.asLoaded().center));
                            },
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: Text(
                            'Less than ${radius.toStringAsFixed(1)} km',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: !state.isLoaded()
                        ? Container()
                        : ListView.builder(
                            itemCount: state.asLoaded().shops.size,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => SizedBox(
                              height: 92,
                              width: 184,
                              child: Card(
                                child: CachedNetworkImage(
                                  imageUrl:
                                      state.asLoaded().shops[index].logoUrl,
                                  placeholder: (context, url) =>
                                      Image.asset('images/logo.png'),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                            ),
                          ),
                  ),
                  Expanded(
                    child: LoadingOverlay(
                        isLoading: state.isLoading(),
                        color: Colors.black,
                        child: Placeholder()
                        //  GoogleMap(
                        //   circles: {
                        //     Circle(
                        //       circleId: CircleId('1'),
                        //       center: center,
                        //       radius: radius * 1000,
                        //       fillColor: Colors.red.withOpacity(.1),
                        //       strokeWidth: 0,
                        //       visible: true,
                        //     )
                        //   },
                        //   myLocationEnabled: true,
                        //   myLocationButtonEnabled: true,
                        //   zoomControlsEnabled: false,
                        //   mapType: MapType.hybrid,
                        //   markers: markers,
                        //   initialCameraPosition: cameraPosition ??
                        //       CameraPosition(
                        //           target: Location.empty().latLng, zoom: 15),
                        //   onMapCreated: (GoogleMapController controller) {
                        //     _controller.complete(controller);
                        //     setState(() {
                        //       mapController = controller;
                        //     });
                        //   },
                        // ),
                        ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
