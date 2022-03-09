import 'package:flutter/material.dart';
import 'package:shopify_manager/presentation/register_shop/opening_hours/misc/day_presentation_classes.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/interval_picker.dart';

class DayRow extends StatefulWidget {
  final DayPrimitive day;
  final void Function(DayPrimitive changedDay) onChanged;

  const DayRow({
    Key? key,
    required this.day,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<DayRow> createState() => _DayRowState();
}

class _DayRowState extends State<DayRow> {
  late DayPrimitive day;

  @override
  void initState() {
    day = widget.day;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
          child: Text(
            widget.day.day.substring(0, 3),
          ),
        ),
        Switch(
          onChanged: (_) {
            setState(() {
              day = day.copyWith(isOpen: !day.isOpen);
            });

            widget.onChanged(day);
          },
          value: day.isOpen,
        ),
        const Spacer(
          flex: 1,
        ),
        Flexible(
            flex: 5,
            child: IntervalPicker(
              disabled: !day.isOpen,
              timeInterval: widget.day.timeInterval,
              onOpeningChanged: (newOpeningStr) {
                if (newOpeningStr != null) {
                  day = day.copyWith(
                      timeInterval: TimeIntervalPrimitive.fromString(
                          newOpeningStr, day.timeInterval.closingToString));
                }

                widget.onChanged(day);
              },
              onclosingChanged: (newClosingStr) {
                if (newClosingStr != null) {
                  day = day.copyWith(
                      timeInterval: TimeIntervalPrimitive.fromString(
                          day.timeInterval.openingToString, newClosingStr));
                }

                widget.onChanged(day);
              },
            )),
      ],
    );
  }
}
//   List<String> _generateHours() {
//   final hours = <String>[];

//   for (var i = 0; i <= 24; i++) {
//     String hourPart = '';
//     if (i < 10) hourPart += '0';
//     hourPart += i.toString();

//     for (var j = 0; j <= 45; j += 15) {
//       String hour = '';
//       String minutePart = '';
//       if (j == 0) minutePart += '0';

//       minutePart += j.toString();
//       if (i == 24 && j != 0) break;
//       hour = hourPart + ':' + minutePart;
//       hours.add(hour);
//     }
//   }
//   return hours;
// }

