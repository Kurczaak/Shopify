import 'package:flutter/material.dart';

class ShopifyNetworkImage extends StatelessWidget {
  const ShopifyNetworkImage(this.src,
      {Key? key, this.width, this.height, this.fit})
      : super(key: key);
  final String src;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      src,
      fit: fit,
      width: width,
      height: height,
      loadingBuilder:
          (BuildContext context, Widget widget, ImageChunkEvent? event) {
        if (event == null) {
          return widget;
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
      errorBuilder: (_, __, ___) => const ShopifyAssetImage('images/logo.png'),
    );
  }
}

class ShopifyAssetImage extends StatelessWidget {
  const ShopifyAssetImage(this.src,
      {Key? key, this.width, this.height, this.fit})
      : super(key: key);

  final String src;
  final double? width;
  final double? height;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      src,
      fit: fit,
      width: width,
      height: height,
      package: 'shopify_presentation',
    );
  }
}
