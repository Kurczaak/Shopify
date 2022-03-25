import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shopify_client/application/shop_watcher/shop_watcher_bloc.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/domain/core/location/location.dart';
import 'package:shopify_client/injection.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShopWatcherBloc>(
      create: (context) => getIt<ShopWatcherBloc>()
        ..add(ShopWatcherEvent.watchNearbyShops(
          radius: 20,
        )),
      child: BlocConsumer<ShopWatcherBloc, ShopWatcherState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: state.when(
                  initial: () => ElevatedButton(
                      onPressed: () {
                        context
                            .read<ShopWatcherBloc>()
                            .add(ShopWatcherEvent.watchNearbyShops(
                              radius: .2,
                            ));
                      },
                      child: Text('Initial')),
                  loading: () => CircularProgressIndicator(),
                  loaded: (loaded) => Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: Image.network(
                                      loaded.shops[index].logoUrl),
                                );
                              },
                              itemCount: loaded.shops.size,
                            ),
                          ),
                          Expanded(
                            child: GoogleMap(
                              myLocationEnabled: true,
                              myLocationButtonEnabled: true,
                              zoomControlsEnabled: false,
                              mapType: MapType.hybrid,
                              markers: loaded.shops
                                  .asList()
                                  .map((shop) => Marker(
                                      infoWindow: InfoWindow(
                                          title: shop.shopName.getOrCrash(),
                                          snippet: shop.address.toString()),
                                      markerId: MarkerId(shop.id.getOrCrash()),
                                      position: shop.location.latLng))
                                  .toSet(),
                              initialCameraPosition: CameraPosition(
                                  target: LatLng(
                                      52.12254235987774, 19.960413317903008),
                                  zoom: 18),
                              onMapCreated: (GoogleMapController controller) {
                                _controller.complete(controller);
                              },
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                context
                                    .read<ShopWatcherBloc>()
                                    .add(ShopWatcherEvent.watchNearbyShops(
                                      radius: 20,
                                    ));
                              },
                              child: Text('XD'))
                        ],
                      ),
                  error: (_) => Text('error')),
            ),
          );
        },
      ),
    );
  }
}
