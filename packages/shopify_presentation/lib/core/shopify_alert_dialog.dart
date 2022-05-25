import 'package:flutter/material.dart';
import 'package:shopify_presentation/core//shopify_buttons.dart';

enum DialogType {
  success,
  error,
}

class ShopifyAlertDialog extends StatelessWidget {
  final String title;
  final String subtitle;
  final String confirmText;
  final String cancelText;
  final DialogType type;
  final void Function()? onCancel;
  final void Function() onConfirm;
  const ShopifyAlertDialog({
    Key? key,
    required this.title,
    required this.subtitle,
    this.confirmText = "Ok",
    this.cancelText = "Cancel",
    this.onCancel,
    required this.onConfirm,
    this.type = DialogType.success,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      content: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 70),
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 20),
              Text(
                subtitle,
              ),
            ],
          ),
          Positioned(
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: type == DialogType.success
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).errorColor,
              ),
              height: 100,
              child: Image.asset(
                'images/logo.png',
                fit: BoxFit.fill,
              ),
            ),
            top: -50,
          ),
        ],
      ),
      actions: [
        if (onCancel != null)
          ShopifySecondaryButton(
            onPressed: onCancel,
            text: cancelText,
            type: type == DialogType.success
                ? ButtonType.success
                : ButtonType.warning,
          ),
        ShopifyPrimaryButton(
          onPressed: onConfirm,
          text: confirmText,
          type: type == DialogType.success
              ? ButtonType.success
              : ButtonType.warning,
        ),
      ],
    );
  }
}
