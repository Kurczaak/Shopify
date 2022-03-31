import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kt_dart/kt.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shopify_client/application/shop_watcher/shop_watcher_bloc.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/domain/core/location/location.dart';
import 'package:shopify_client/domain/shopping/shop.dart';
import 'package:shopify_client/injection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shopify_client/presentation/core/widgets/shop_preview_dialog.dart';
import 'package:shopify_client/presentation/core/widgets/shopify_alert_dialog.dart';
import 'package:shopify_client/presentation/core/widgets/shopify_appbar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _controller = Completer();
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
              child: ListView(children: const [Card()]),
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
              initial: () => Container(),
              error: (_) => ElevatedButton(
                child: Text('Error'),
                onPressed: () {
                  context
                      .read<ShopWatcherBloc>()
                      .add(ShopWatcherEvent.watchNearbyShops(radius: radius));
                },
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
                            'Less than ${radius.toStringAsFixed(1)} km',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 90,
                    child: !state.isLoaded()
                        ? Container()
                        : ShopsPreviewScrollableList(
                            shops: state.isLoaded()
                                ? state.asLoaded().shops
                                : const KtList.empty(),
                            itemController: itemController,
                            mapController: mapController,
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

class ShopsPreviewScrollableList extends StatelessWidget {
  const ShopsPreviewScrollableList({
    Key? key,
    required this.itemController,
    required this.mapController,
    required this.shops,
    required this.onTap,
    this.selectedShop,
  }) : super(key: key);

  final ItemScrollController itemController;
  final GoogleMapController? mapController;
  final void Function(Shop shop) onTap;
  final KtList<Shop> shops;
  final Shop? selectedShop;

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      padding: EdgeInsets.symmetric(horizontal: 28),
      itemScrollController: itemController,
      itemCount: shops.size,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => SizedBox(
        height: 92,
        width: 184,
        child: Card(
          elevation:
              (selectedShop != null && selectedShop == shops[index]) ? 10 : 1,
          child: InkWell(
            onTap: () => onTap(shops[index]),
            child: CachedNetworkImage(
              imageUrl: shops[index].logoUrl,
              placeholder: (context, url) => Image.asset('images/logo.png'),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}

class ShopsMapWidget extends StatefulWidget {
  final bool isLoading;

  final double zoom;
  final Location center;

  final double radius;

  final KtList<Shop> shops;

  final Function(Shop shop) onTap;

  final void Function(GoogleMapController)? onMapCreated;
  const ShopsMapWidget({
    Key? key,
    this.isLoading = false,
    this.zoom = 15,
    required this.center,
    required this.radius,
    required this.shops,
    required this.onTap,
    required this.onMapCreated,
  }) : super(key: key);

  @override
  State<ShopsMapWidget> createState() => _ShopsMapWidgetState();
}

class _ShopsMapWidgetState extends State<ShopsMapWidget> {
  _ShopsMapWidgetState();

  Set<Marker> _mapShopsToMarkers() {
    return widget.shops
        .asList()
        .map((shop) => Marker(
            onTap: () => widget.onTap(shop),
            infoWindow: InfoWindow(
                title: shop.shopName.getOrCrash(),
                snippet: shop.address.toString()),
            markerId: MarkerId(shop.id.getOrCrash()),
            position: shop.location.latLng))
        .toSet();
  }

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      isLoading: widget.isLoading,
      color: Colors.black,
      child: GoogleMap(
        circles: {
          Circle(
            circleId: const CircleId('1'),
            center: widget.center.latLng,
            radius: widget.radius * 1000,
            fillColor: Theme.of(context).primaryColor.withOpacity(.2),
            strokeWidth: 0,
            visible: true,
          )
        },
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        zoomControlsEnabled: false,
        mapType: MapType.hybrid,
        markers: _mapShopsToMarkers(),
        initialCameraPosition:
            CameraPosition(target: widget.center.latLng, zoom: widget.zoom),
        onMapCreated: widget.onMapCreated,
      ),
    );
  }
}
