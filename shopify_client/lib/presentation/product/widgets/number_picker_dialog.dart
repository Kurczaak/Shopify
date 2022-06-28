import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

class ShopifyNumberPickerDialog extends StatefulWidget {
  const ShopifyNumberPickerDialog(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.confirmText,
      required this.cancelText,
      this.imgUrl,
      this.onCancel,
      required this.onConfirm})
      : super(key: key);
  final String title;
  final String subtitle;
  final String confirmText;
  final String cancelText;
  final String? imgUrl;

  final void Function()? onCancel;
  final void Function(int value) onConfirm;

  @override
  State<ShopifyNumberPickerDialog> createState() =>
      _ShopifyNumberPickerDialogState();
}

class _ShopifyNumberPickerDialogState extends State<ShopifyNumberPickerDialog> {
  int currentValue = 2;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            height: 100,
            child: widget.imgUrl == null
                ? Container()
                : Image.network(widget.imgUrl!),
          ),
          const SizedBox(height: 20),
          Text(widget.title, style: Theme.of(context).textTheme.headline5),
          const SizedBox(
            height: 20,
          ),
          Text(
            widget.subtitle,
            textAlign: TextAlign.center,
          ),
          NumberPicker(
              minValue: 1,
              maxValue: 99,
              value: currentValue,
              onChanged: (int num) {
                currentValue = num;
                setState(() {});
              })
        ],
      ),
      actions: [
        if (widget.onCancel != null)
          ShopifySecondaryButton(
            onPressed: widget.onCancel,
            text: widget.cancelText,
          ),
        ShopifyPrimaryButton(
          onPressed: () {
            widget.onConfirm(currentValue);
            Navigator.of(context).pop();
          },
          text: widget.confirmText,
        ),
      ],
    );
  }
}
