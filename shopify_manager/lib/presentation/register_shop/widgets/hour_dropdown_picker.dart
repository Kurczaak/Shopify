import 'package:flutter/material.dart';

class HourDropdownPicker extends StatefulWidget {
  final Function(String? value) onChanged;
  final List<String> hours;
  final bool error;
  final bool disabled;
  final double menuMaxHeight;
  final double itemHeight;
  final String initialValue;

  const HourDropdownPicker({
    Key? key,
    required this.onChanged,
    required this.hours,
    this.error = false,
    this.disabled = false,
    this.initialValue = '08:00',
    this.menuMaxHeight = 300,
    this.itemHeight = 50,
  }) : super(key: key);

  @override
  State<HourDropdownPicker> createState() => _HourDropdownPickerState();
}

class _HourDropdownPickerState extends State<HourDropdownPicker> {
  String? pickedHour;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        iconEnabledColor: widget.disabled
            ? Theme.of(context).disabledColor
            : Theme.of(context).secondaryHeaderColor,
        alignment: AlignmentDirectional.bottomStart,
        isExpanded: false,
        value: pickedHour ?? widget.initialValue,
        menuMaxHeight: widget.menuMaxHeight,
        itemHeight: widget.itemHeight,
        items: widget.hours
            .map((String hour) => DropdownMenuItem(
                  enabled: !widget.disabled,
                  child: Text(
                    hour,
                    style: TextStyle(
                      color: widget.disabled
                          ? Theme.of(context).disabledColor
                          : widget.error
                              ? Theme.of(context).errorColor
                              : Theme.of(context).colorScheme.outline,
                      fontWeight: hour.contains(':00')
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  value: hour,
                ))
            .toList(),
        onChanged: (String? value) {
          setState(() {
            pickedHour = value;
          });
          widget.onChanged(value);
        });
  }
}
