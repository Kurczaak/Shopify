import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:shopify_presentation/core/green_corner_background.dart';
import 'package:shopify_presentation/core/shopify_progress_indicator.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return GreenCornerBackground(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ShopifyProgressIndicator(),
            const SizedBox(height: 20),
            HeartbeatProgressIndicator(
              startScale: .5,
              endScale: 1,
              child: Text(
                title,
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
