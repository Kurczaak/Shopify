import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:shopify_manager/domain/core/failures.dart';

class ShopifyTextFormField extends StatelessWidget {
  const ShopifyTextFormField({
    Key? key,
    required this.controller,
    required this.fieldName,
    required this.value,
    required this.onChanged,
    required this.showErrorMessages,
    this.textInputAction = TextInputAction.next,
    this.keyboardType,
  }) : super(key: key);

  final TextInputAction textInputAction;
  final TextEditingController controller;
  final String fieldName;
  final Either<ValueFailure<String>, String> value;
  final void Function(String value) onChanged;
  final bool showErrorMessages;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      autovalidateMode: showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      validator: (_) => value.fold(
          (l) => l.maybeMap(
                orElse: () => null,
                shopping: (value) => value.f.maybeMap(
                  orElse: () => '',
                  empty: (_) => '$fieldName cannot be empty',
                  exceedingLength: (f) =>
                      'Name too long. Max ${f.maxLength} characters',
                  stringTooShort: (f) =>
                      'Name too short. Min ${f.minLength} characters',
                  incorrectPostalCode: (_) => 'Incorrect Postal Code',
                  multiline: (_) => 'This field cannot be multiline',
                  noAddressNumber: (_) => 'Street number cannot be empty',
                  nonPositiveValue: (_) =>
                      'This should be a positive integer number',
                  numberOutsideInterval: (value) =>
                      'Number should be between ${value.min}, and ${value.max}',
                ),
              ),
          (r) => null),
      controller: controller,
      decoration: InputDecoration(
        labelText: fieldName,
      ),
      keyboardType: keyboardType,
      onChanged: onChanged,
    );
  }
}
