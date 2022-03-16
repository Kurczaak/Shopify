import 'package:flutter/material.dart';

class ShopifyPrimaryButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const ShopifyPrimaryButton(
      {Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
