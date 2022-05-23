import 'package:flutter/material.dart';

class GreenCornerBackground extends StatelessWidget {
  final Widget child;
  const GreenCornerBackground({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Image.asset('images/corner_shape.png'), child],
    );
  }
}
