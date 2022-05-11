import 'package:flutter/material.dart';
import 'package:shopify_manager/presentation/register_shop/opening_hours/misc/day_presentation_classes.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/hour_dropdown_picker.dart';

class IntervalPicker extends StatelessWidget {
  final bool disabled;
  final TimeIntervalPrimitive timeInterval;
  final dynamic Function(String? openingStr) onOpeningChanged;
  final dynamic Function(String? closingStr) onclosingChanged;
  const IntervalPicker(
      {Key? key,
      this.disabled = false,
      required this.timeInterval,
      required this.onOpeningChanged,
      required this.onclosingChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        HourDropdownPicker(
          onChanged: onOpeningChanged,
          hours: _hours,
          initialValue: timeInterval.openingToString,
          disabled: disabled,
        ),
        const SizedBox(width: 10),
        Text(
          '-',
          style: TextStyle(
            color: disabled
                ? Theme.of(context).disabledColor
                : Theme.of(context).secondaryHeaderColor,
          ),
        ),
        const SizedBox(width: 10),
        HourDropdownPicker(
          onChanged: onclosingChanged,
          hours: _hours,
          initialValue: timeInterval.closingToString,
          disabled: disabled,
        ),
      ],
    );
  }
}

final _hours = [
  "00:00",
  "00:15",
  "00:30",
  "00:45",
  "01:00",
  "01:15",
  "01:30",
  "01:45",
  "02:00",
  "02:15",
  "02:30",
  "02:45",
  "03:00",
  "03:15",
  "03:30",
  "03:45",
  "04:00",
  "04:15",
  "04:30",
  "04:45",
  "05:00",
  "05:15",
  "05:30",
  "05:45",
  "06:00",
  "06:15",
  "06:30",
  "06:45",
  "07:00",
  "07:15",
  "07:30",
  "07:45",
  "08:00",
  "08:15",
  "08:30",
  "08:45",
  "09:00",
  "09:15",
  "09:30",
  "09:45",
  "10:00",
  "10:15",
  "10:30",
  "10:45",
  "11:00",
  "11:15",
  "11:30",
  "11:45",
  "12:00",
  "12:15",
  "12:30",
  "12:45",
  "13:00",
  "13:15",
  "13:30",
  "13:45",
  "14:00",
  "14:15",
  "14:30",
  "14:45",
  "15:00",
  "15:15",
  "15:30",
  "15:45",
  "16:00",
  "16:15",
  "16:30",
  "16:45",
  "17:00",
  "17:15",
  "17:30",
  "17:45",
  "18:00",
  "18:15",
  "18:30",
  "18:45",
  "19:00",
  "19:15",
  "19:30",
  "19:45",
  "20:00",
  "20:15",
  "20:30",
  "20:45",
  "21:00",
  "21:15",
  "21:30",
  "21:45",
  "22:00",
  "22:15",
  "22:30",
  "22:45",
  "23:00",
  "23:15",
  "23:30",
  "23:45",
  "24:00"
];
