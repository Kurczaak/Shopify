import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/shop.dart';

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
