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

class ShopifyIconTextButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool error;
  final Function() onPressed;
  const ShopifyIconTextButton({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onPressed,
    this.error = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: InkWell(
        splashColor: Theme.of(context).primaryColor,
        onTap: onPressed,
        borderRadius: BorderRadius.circular(9),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                    color: Theme.of(context).colorScheme.outline,
                    width: 1,
                    style: BorderStyle.solid)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                      color: error
                          ? Theme.of(context).errorColor
                          : Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.zero, right: Radius.circular(8))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(width: 10),
                      Icon(
                        icon,
                        color: Colors.white,
                      ),
                      const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
