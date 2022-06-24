import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_presentation/core/shopify_image.dart';

class PhotosCarouselSlider extends StatefulWidget {
  const PhotosCarouselSlider({Key? key, required this.widgets, this.onTap})
      : super(key: key);

  factory PhotosCarouselSlider.network(KtList<ShopifyUrl> urls,
      {Key? key, void Function(int)? onTap}) {
    return PhotosCarouselSlider(
      widgets: urls
          .map((url) => ShopifyNetworkImage(
                url.getOrCrash(),
                fit: BoxFit.fitWidth,
              ))
          .toList()
          .asList(),
      key: key,
      onTap: onTap,
    );
  }
  factory PhotosCarouselSlider.photos(KtList<Photo> photos,
      {Key? key, void Function(int)? onTap}) {
    return PhotosCarouselSlider(
      widgets: photos
          .map((photo) => Image.file(
                photo.getOrCrash(),
                fit: BoxFit.fitWidth,
                errorBuilder: (_, __, ___) => Image.asset('images/logo.png'),
              ))
          .toList()
          .asList(),
      key: key,
      onTap: onTap,
    );
  }

  final List<Widget> widgets;
  final void Function(int index)? onTap;

  @override
  State<PhotosCarouselSlider> createState() =>
      _PhotosCarouselSliderState(widgets);
}

class _PhotosCarouselSliderState extends State<PhotosCarouselSlider> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  final List<Widget> widgets;

  _PhotosCarouselSliderState(this.widgets);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: widgets.length,
          itemBuilder: (context, index, pageViewIndex) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    InkWell(
                        key: Key('widget-$index'),
                        onTap: () {
                          if (widget.onTap != null) widget.onTap!(index);
                        },
                        child: widgets[index]),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          '#${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            aspectRatio: 2.0,
            enableInfiniteScroll: false,
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.5,
            initialPage: 0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widgets.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Theme.of(context).primaryColor)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
