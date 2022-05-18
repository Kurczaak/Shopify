import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kt_dart/kt.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shopify_client/application/auth/auth_bloc.dart';
import 'package:shopify_client/application/shop_watcher/shop_watcher_bloc.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/core/widgets/shop_preview_dialog.dart';
import 'package:shopify_client/presentation/core/widgets/shopify_appbar.dart';
import 'package:shopify_client/presentation/shop/widgets/shops_logos_scrollable_list.dart';
import 'package:shopify_client/presentation/shop/widgets/shops_map_widget.dart';

class ShopPickerPage extends StatefulWidget {
  const ShopPickerPage({Key? key}) : super(key: key);

  @override
  State<ShopPickerPage> createState() => _ShopPickerPageState();
}

class _ShopPickerPageState extends State<ShopPickerPage> {
  Completer<GoogleMapController> _controller = Completer();
  GoogleMapController? mapController;
  final double minDistance = .1;
  final double maxDistance = 20;
  double radius = .5;
  Shop? selectedShop;

  final itemController = ItemScrollController();

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
            mapController?.animateCamera(
                CameraUpdate.newLatLng(state.asLoaded().center.latLng));
          }
          setState(() {
            selectedShop = null;
          });
        },
        builder: (context, state) {
          return Scaffold(
            drawer: Drawer(
              child: ListView(children: [
                Card(
                  child: TextButton(
                      onPressed: () {
                        getIt<AuthBloc>().add(const AuthEvent.signedOut());
                      },
                      child: const Text('log out')),
                )
              ]),
            ),
            appBar: ShopifyAppBar(
              appBar: AppBar(),
              title: 'Shopify Client',
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: selectedShop != null
                ? FloatingActionButton.extended(
                    label: const Text('Open shop details'),
                    icon: const Icon(
                      Icons.info,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => ShopPreviewDialog(
                              shop: selectedShop!, onConfirm: () {}));
                    },
                  )
                : null,
            body: state.whenOrElse(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (errorState) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        errorState.failure.map(
                            unexpected: (_) =>
                                'An Unexpected Failure has occured',
                            insufficientPermission: (_) =>
                                'Insufficient Permissions',
                            unableToUpdate: (_) => 'Unable to update',
                            timeout: (_) => 'Connection has timed out',
                            noShopFound: (_) =>
                                'Your location could not be found'),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      const Text(
                        'Make sure you have an access to internet, location permission enabled or try again later',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        child: const Icon(Icons.refresh),
                        onPressed: () {
                          context.read<ShopWatcherBloc>().add(
                              ShopWatcherEvent.watchNearbyShops(
                                  radius: radius));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              orElse: (orElseState) => Column(
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Slider(
                            min: minDistance,
                            max: maxDistance,
                            value: radius,
                            onChanged: (value) {
                              setState(() {
                                radius = value;
                              });
                            },
                            onChangeEnd: (_) => orElseState.isLoaded()
                                ? context.read<ShopWatcherBloc>().add(
                                    ShopWatcherEvent.watchShopsByLocation(
                                        radius: radius,
                                        location: state.asLoaded().center))
                                : context.read<ShopWatcherBloc>().add(
                                    ShopWatcherEvent.watchNearbyShops(
                                        radius: radius)),
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: Text(
                            'Less than ${radius < 1 ? radius.toStringAsFixed(1) : radius.toInt()} km',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 90,
                    child: !state.isLoaded()
                        ? Container()
                        : ShopsLogosScrollableList(
                            shops: state.isLoaded()
                                ? state.asLoaded().shops
                                : const KtList.empty(),
                            itemController: itemController,
                            selectedShop: selectedShop,
                            onTap: (shop) {
                              itemController.scrollTo(
                                duration: const Duration(milliseconds: 250),
                                index: state.asLoaded().shops.indexOf(shop),
                                alignment: .25,
                              );
                              mapController?.showMarkerInfoWindow(
                                  MarkerId(shop.id.getOrCrash()));
                              mapController?.animateCamera(
                                  CameraUpdate.newLatLng(shop.location.latLng));
                              setState(() {
                                selectedShop = shop;
                              });
                            },
                          ),
                  ),
                  const SizedBox(height: 28),
                  Expanded(
                    child: ShopsMapWidget(
                      center: state.isLoaded()
                          ? state.asLoaded().center
                          : Location.empty(),
                      shops: state.isLoaded()
                          ? state.asLoaded().shops
                          : const KtList.empty(),
                      onMapCreated: (GoogleMapController controller) {
                        _controller = Completer<GoogleMapController>();
                        _controller.complete(controller);
                        setState(() {
                          mapController = controller;
                        });
                      },
                      radius: radius,
                      isLoading: state.isLoading(),
                      onTap: state.isLoaded()
                          ? (Shop shop) {
                              itemController.scrollTo(
                                duration: const Duration(milliseconds: 500),
                                index: state.asLoaded().shops.indexOf(shop),
                                alignment: .25,
                              );
                              setState(() {
                                selectedShop = shop;
                              });
                            }
                          : (_) {},
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
