import 'package:flutter/material.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/hour_dropdown_picker.dart';

class DayAdjuster extends StatefulWidget {
  final DayAdjusterController controller;
  final String day;
  //TODO
  //maybe remove
  final Function(String?)? onChanged;

  const DayAdjuster(
      {Key? key, required this.controller, required this.day, this.onChanged})
      : super(key: key);

  @override
  _DayAdjusterState createState() => _DayAdjusterState();
}

class _DayAdjusterState extends State<DayAdjuster> {
  late String _openingHour;
  late String _closingHour;
  late String _day;
  bool _isOpen = true;
  @override
  void initState() {
    _openingHour = widget.controller.openingHour;
    _closingHour = widget.controller.closingHour;
    _day = widget.day;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
        ),
        SizedBox(
          child: Text(_day),
          width: 40,
        ),
        Switch(
            value: _isOpen,
            onChanged: (_) => setState(() {
                  _isOpen = !_isOpen;
                })),
        SizedBox(width: 20),
        if (_isOpen)
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HourDropdownPicker(
                  value: _openingHour,
                  onChanged: (value) {
                    setState(() {
                      _openingHour = value.toString();
                    });
                    widget.onChanged!(value);
                  },
                ),
                const Text('-'),
                HourDropdownPicker(
                    value: _closingHour,
                    onChanged: (value) => setState(() {
                          _closingHour = value.toString();
                        })),
              ],
            ),
          ),
      ],
    );
  }
}

class DayAdjusterController {
  bool isOpen = true;
  String openingHour = '6:00 AM';
  String closingHour = '10:00 PM';
}
