import 'package:flutter/material.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/interval_picker.dart';

class DayRow extends StatefulWidget {
  final String day;
  final List<String> hours;
  const DayRow({
    Key? key,
    required this.day,
    required this.hours,
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
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
              hours: widget.hours,
            )),
      ],
    );
  }
}
