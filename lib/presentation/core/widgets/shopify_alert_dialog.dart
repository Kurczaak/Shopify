import 'package:flutter/material.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_primary_button.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_secondary_button.dart';

class ShopifyAlertDialog extends StatelessWidget {
  final String title;
  final String subtitle;
  final String confirmText;
  final String? cancelText;
  const ShopifyAlertDialog({
    Key? key,
    required this.title,
    required this.subtitle,
    this.confirmText = "Ok",
    this.cancelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(child: Text(title)),
      content: SingleChildScrollView(child: Text(subtitle)),
      actions: [
        if (cancelText != null)
          ShopifySecondaryButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              text: cancelText ?? 'Cancel'),
        ShopifyPrimaryButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            text: confirmText),
      ],
    );
  }
}
