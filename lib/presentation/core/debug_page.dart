import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/hour_dropdown_picker.dart';
import 'package:shopify_manager/presentation/sign_in/widgets/sign_up_form.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DebugPage extends StatelessWidget {
  const DebugPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ProcessAppBar(
          appBar: AppBar(),
          title: 'Register Shop',
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DayRow(day: 'Monday'),
              DayRow(day: 'Tuesday'),
              DayRow(day: 'Wednesday'),
              DayRow(day: 'Thursday'),
              DayRow(day: 'Friday'),
              DayRow(day: 'Saturday'),
              DayRow(day: 'Sunday'),
            ],
          ),
        ));
  }
}

class DayRow extends StatefulWidget {
  final String day;
  const DayRow({
    Key? key,
    required this.day,
  }) : super(key: key);

  @override
  State<DayRow> createState() => _DayRowState();
}

class _DayRowState extends State<DayRow> {
  bool _isOpen = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            widget.day,
          ),
        ),
        Switch(
          onChanged: (_) {
            setState(() {
              _isOpen = !_isOpen;
            });
          },
          value: _isOpen,
        ),
        const Spacer(
          flex: 1,
        ),
        Flexible(
            flex: 5,
            child: IntervalPicker(
              disabled: !_isOpen,
            )),
      ],
    );
  }
}

class IntervalPicker extends StatefulWidget {
  IntervalPicker({Key? key, this.disabled = false}) : super(key: key);
  final hours = generateTime();
  final bool disabled;

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

List<String> generateTime() {
  final hours = <String>[];

  for (var i = 0; i <= 24; i++) {
    String hourPart = '';
    if (i < 10) hourPart += '0';
    hourPart += i.toString();

    for (var j = 0; j <= 45; j += 15) {
      String hour = '';
      String minutePart = '';
      if (j == 0) minutePart += '0';

      minutePart += j.toString();
      if (i == 24 && j != 0) break;
      hour = hourPart + ':' + minutePart;
      hours.add(hour);
    }
  }
  return hours;
}
