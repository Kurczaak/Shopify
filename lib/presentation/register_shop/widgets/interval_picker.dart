import 'package:flutter/material.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/hour_dropdown_picker.dart';

class IntervalPicker extends StatefulWidget {
  final List<String> hours;
  final bool disabled;
  const IntervalPicker({Key? key, required this.hours, this.disabled = false})
      : super(key: key);

  @override
  State<IntervalPicker> createState() => _IntervalPickerState();
}

class _IntervalPickerState extends State<IntervalPicker> {
  String openingHour = '06:00';
  String closingHour = '10:00';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        HourDropdownPicker(
          onChanged: (_) {},
          hours: widget.hours,
          initialValue: "06:00",
          disabled: widget.disabled,
        ),
        const SizedBox(width: 10),
        Text(
          '-',
          style: TextStyle(
            color: widget.disabled
                ? Theme.of(context).disabledColor
                : Theme.of(context).secondaryHeaderColor,
          ),
        ),
        const SizedBox(width: 10),
        HourDropdownPicker(
          onChanged: (_) {},
          hours: widget.hours,
          initialValue: "22:00",
          disabled: widget.disabled,
        ),
      ],
    );
  }
}
