import 'package:flutter/material.dart';

class ShopifyDropdownMenuButton<T> extends StatefulWidget {
  final String initalText;
  final T? initialValue;
  final void Function(T value) onChanged;
  final List<ShopifyDropdownMenuItem<T>> items;
  final bool error;
  const ShopifyDropdownMenuButton(
      {Key? key,
      required this.initalText,
      required this.onChanged,
      required this.items,
      this.error = false,
      this.initialValue})
      : super(key: key);

  @override
  State<ShopifyDropdownMenuButton<T>> createState() =>
      _ShopifyDropdownMenuButtonState<T>();
}

class _ShopifyDropdownMenuButtonState<T>
    extends State<ShopifyDropdownMenuButton<T>> {
  T? _currentValue;

  @override
  void initState() {
    _currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
              color: widget.error
                  ? Theme.of(context).errorColor
                  : Theme.of(context).colorScheme.outline,
              width: 1,
              style: BorderStyle.solid)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: DropdownButton<T>(
            isExpanded: true,
            underline: Container(),
            hint: Text(
              widget.initalText,
              style: widget.error
                  ? Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Theme.of(context).errorColor)
                  : Theme.of(context).textTheme.bodyText1,
            ),
            value: _currentValue,
            items: widget.items,
            onChanged: (newValue) {
              if (newValue != null) {
                widget.onChanged(newValue);
                setState(() {
                  _currentValue = newValue;
                });
              }
            }),
      ),
    );
  }
}

class ShopifyDropdownMenuItem<T> extends DropdownMenuItem<T> {
  final String valueString;

  ShopifyDropdownMenuItem({Key? key, T? value, required this.valueString})
      : super(
          key: key,
          child: Container(),
          value: value,
        );

  @override
  Widget build(BuildContext context) {
    return DropdownMenuItem<T>(
        value: value,
        child: Text(
          valueString,
          style: Theme.of(context).textTheme.bodyText1,
        ));
  }
}
