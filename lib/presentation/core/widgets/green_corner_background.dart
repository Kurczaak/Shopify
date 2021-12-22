import 'package:flutter/material.dart';

class GreenCornerBackground extends StatelessWidget {
  final Widget child;
  const GreenCornerBackground({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topLeft,
          repeat: ImageRepeat.noRepeat,
          image: AssetImage('images/corner_shape.png'),
          fit: BoxFit.scaleDown,
          matchTextDirection: false,
        ),
        shape: BoxShape.rectangle,
      ),
      child: child,
    );
  }
}
