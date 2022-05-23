import 'package:flutter/material.dart';

enum ButtonType { success, warning, info }

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
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).canvasColor,
          side: BorderSide(
            width: 2,
            color: _mapTypeToColor(context, type),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: _mapTypeToColor(context, type),
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
        primary: _mapTypeToColor(context, type),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

Color _mapTypeToColor(BuildContext context, ButtonType type) {
  switch (type) {
    case ButtonType.success:
      return Theme.of(context).primaryColor;
    case ButtonType.info:
      return Theme.of(context).colorScheme.secondary;
    case ButtonType.warning:
      return Theme.of(context).errorColor;
  }
}
