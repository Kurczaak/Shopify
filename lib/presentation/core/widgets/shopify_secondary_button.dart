import 'package:flutter/material.dart';

class ShopifySecondaryButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const ShopifySecondaryButton(
      {Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).canvasColor,
          side: BorderSide(width: 2, color: Theme.of(context).primaryColor),
        ));
  }
}
