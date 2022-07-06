import 'dart:async';
import 'dart:math';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shopify_client/application/shop_picker/shop_picker_bloc.dart';
import 'package:shopify_client/presentation/routes/router.gr.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

class ShopPickerPage extends StatefulWidget {
  const ShopPickerPage({Key? key}) : super(key: key);

  @override
  State<ShopPickerPage> createState() => _ShopPickerPageState();
}

class _ShopPickerPageState extends State<ShopPickerPage> {
  Completer<GoogleMapController> _controller = Completer();
  GoogleMapController? mapController;
  final double minDistance = .1;
  final double maxDistance = 5;
  double radius = .5;
  Shop? selectedShop;

  final itemController = ItemScrollController();

  double getZoomLevel(double radius) {
    double zoomLevel = 11;
    if (radius > 0) {
      double radiusElevated = radius + radius / 2;
      double scale = radiusElevated / 500;
      zoomLevel = 15.8 - log(scale) / log(2);
    }
    zoomLevel = double.parse(zoomLevel.toStringAsFixed(2));
    return zoomLevel;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShopPickerBloc>(
      create: (context) {
        radius = getIt<ShopPickerBloc>().state.radius;
        return getIt<ShopPickerBloc>()
          ..add(const ShopPickerEvent.getYourLocation());
      },
      child: BlocConsumer<ShopPickerBloc, ShopPickerState>(
        listener: (context, state) {
          if (!state.isLoading) {
            mapController?.animateCamera(CameraUpdate.newLatLngZoom(
                state.location.latLng, getZoomLevel(radius * 1000)));
          }
          state.locationFailureOption.fold(
            () => null,
            (failure) => FlushbarHelper.createError(
                message: failure.map(
                    unexpected: (_) => 'An unexpected failure occured!',
                    noLocationFound: (_) =>
                        'Given location could not be found!',
                    timeout: (_) => 'Connection timed out!',
                    permissionDenied: (_) =>
                        'Permission denied. Try again later')).show(context),
          );

          setState(() {
            selectedShop = null;
          });
        },
        builder: (context, state) {
          return Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: selectedShop != null
                ? FloatingActionButton.extended(
                    key: const Key('shop-details-button'),
                    label: const Text('Open shop details'),
                    icon: const Icon(
                      Icons.info,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => ShopPreviewDialog(
                              shop: selectedShop!,
                              onConfirm: () {
                                context.router.popAndPush(
                                    ShopProductsBrowserRoute(
                                        shop: selectedShop!));
                              }));
                    },
                  )
                : null,
            body: state.shopFailureOption.fold(
              () => Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
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
                          onChangeEnd: (_) => context
                              .read<ShopPickerBloc>()
                              .add(ShopPickerEvent.radiusChanged(
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
                  SizedBox(
                    height: 90,
                    child: ShopsLogosScrollableList(
                      shops: state.shops,
                      itemController: itemController,
                      selectedShop: selectedShop,
                      onTap: (shop) {
                        itemController.scrollTo(
                          duration: const Duration(milliseconds: 250),
                          index: state.shops.indexOf(shop),
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
                  const SizedBox(height: 14),
                  LocationTextField(
                    onLocationTap: () => context
                        .read<ShopPickerBloc>()
                        .add(const ShopPickerEvent.getYourLocation()),
                    onSaved: (String input) {
                      context.read<ShopPickerBloc>().add(
                          ShopPickerEvent.searchLocation(
                              stringLocation: input));
                    },
                  ),
                  const SizedBox(height: 14),
                  Expanded(
                    child: ShopsMapWidget(
                      center: state.location,
                      shops: state.shops,
                      onMapCreated: (GoogleMapController controller) {
                        _controller = Completer<GoogleMapController>();
                        _controller.complete(controller);
                        setState(() {
                          mapController = controller;
                        });
                      },
                      radius: radius,
                      isLoading: state.isLoading,
                      onTap: !state.isLoading
                          ? (Shop shop) {
                              itemController.scrollTo(
                                duration: const Duration(milliseconds: 500),
                                index: state.shops.indexOf(shop),
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
              (failure) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        failure.map(
                            noInternetConnection: (_) =>
                                'No internet connection',
                            incorrectLocationGiven: (_) =>
                                'Could not find place with given location',
                            locationPermissionDenied: (_) =>
                                'Location permission denied',
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
                        'Make sure you have an access to the internet, location permission enabled or try again later',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        child: const Icon(Icons.refresh),
                        onPressed: () {
                          context
                              .read<ShopPickerBloc>()
                              .add(const ShopPickerEvent.getYourLocation());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class LocationTextField extends StatefulWidget {
  const LocationTextField(
      {Key? key, required this.onSaved, required this.onLocationTap})
      : super(key: key);
  final Function(String input) onSaved;
  final Function() onLocationTap;

  @override
  State<LocationTextField> createState() => _LocationTextFieldState();
}

class _LocationTextFieldState extends State<LocationTextField> {
  String input = '';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          IconButton(
              onPressed: widget.onLocationTap,
              icon: const Icon(Icons.gps_fixed)),
          Expanded(
            child: ShopifyTextFormField(
                fieldName: 'Search in given location',
                onChanged: (newValue) {
                  input = newValue;
                  setState(() {});
                }),
          ),
          const SizedBox(
            width: 10,
          ),
          ShopifySecondaryButton(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                widget.onSaved(input);
              },
              text: "Search"),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
