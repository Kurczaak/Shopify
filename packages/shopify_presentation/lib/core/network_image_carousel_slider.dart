import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_presentation/core/shopify_image.dart';

class NetworkImageCarouselSlider extends StatefulWidget {
  const NetworkImageCarouselSlider({Key? key, required this.photos})
      : super(key: key);
  final KtList<ShopifyUrl> photos;

  @override
  State<NetworkImageCarouselSlider> createState() =>
      _PictureCarouselSliderState();
}

class _PictureCarouselSliderState extends State<NetworkImageCarouselSlider> {
  late KtList<ShopifyUrl> photos;
  int _photoIndex = 0;
  final controller = CarouselController();
  @override
  void initState() {
    photos = widget.photos;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            onPageChanged: ((index, reason) {
              _photoIndex = index;
              setState(() {});
            }),
            viewportFraction: .95,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
          ),
          items: photos.iter
              .map(
                (photo) => ShopifyNetworkImage(photo.getOrCrash(),
                    fit: BoxFit.fitWidth),
              )
              .toList(),
        ),
        if (photos.size > 1 && _photoIndex != 0)
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: controller.previousPage,
                child: Icon(Icons.chevron_left_sharp,
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
          ),
        if (_photoIndex != photos.size - 1)
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: controller.nextPage,
                child: Icon(Icons.chevron_right_sharp,
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
          ),
      ],
    );
  }
}
