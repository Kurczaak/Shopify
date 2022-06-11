import 'package:flutter/material.dart';

class ShopifyTextFormField extends StatelessWidget {
  const ShopifyTextFormField({
    Key? key,
    this.controller,
    required this.fieldName,
    required this.onChanged,
    this.showErrorMessages = false,
    this.textInputAction = TextInputAction.next,
    this.validator,
    this.keyboardType,
    this.maxLines = 1,
    this.minLines,
  }) : super(key: key);

  final int? maxLines;
  final int? minLines;
  final TextInputAction textInputAction;
  final TextEditingController? controller;
  final String fieldName;
  final void Function(String value) onChanged;
  final bool showErrorMessages;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyText1,
      maxLines: maxLines,
      minLines: minLines,
      textInputAction: textInputAction,
      autovalidateMode: showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelStyle: Theme.of(context).textTheme.bodyText1,
        enabled: true,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 25.0, vertical: 23),
        labelText: fieldName,
      ),
      keyboardType: keyboardType,
      onChanged: onChanged,
    );
  }
}
