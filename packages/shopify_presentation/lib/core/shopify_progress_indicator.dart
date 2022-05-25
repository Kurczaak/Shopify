import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class ShopifyProgressIndicator extends StatelessWidget {
  final Duration duration;
  const ShopifyProgressIndicator(
      {Key? key, this.duration = const Duration(seconds: 1)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeartbeatProgressIndicator(
      duration: duration,
      startScale: .5,
      endScale: 1,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColor,
        ),
        height: 100,
        child: Image.asset(
          'images/logo.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
