import 'package:flutter/material.dart';

enum ButtonType { success, warning }

class ShopifySecondaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final ButtonType type;
  const ShopifySecondaryButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.type = ButtonType.success})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: type == ButtonType.success
                ? Theme.of(context).primaryColor
                : Theme.of(context).errorColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).canvasColor,
          side: BorderSide(
            width: 2,
            color: type == ButtonType.success
                ? Theme.of(context).primaryColor
                : Theme.of(context).errorColor,
          ),
        ));
  }
}

class ShopifyPrimaryButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final ButtonType type;
  const ShopifyPrimaryButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.type = ButtonType.success})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: type == ButtonType.success
            ? Theme.of(context).primaryColor
            : Theme.of(context).errorColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
