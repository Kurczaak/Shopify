import 'package:flutter/material.dart';

class HourDropdownPicker extends StatelessWidget {
  final String? value;
  final Function(String? value) onChanged;
  final double? menuMaxHeight;
  final double? itemHeight;

  final hours = <String>[
    for (var i = 0; i < 24; i++) '${i % 12 + 1}:00' + (i < 12 ? ' AM' : ' PM')
  ];

  HourDropdownPicker({
    Key? key,
    this.value,
    required this.onChanged,
    this.menuMaxHeight = 300,
    this.itemHeight = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      alignment: AlignmentDirectional.bottomStart,
      isExpanded: false,
      value: value,
      menuMaxHeight: menuMaxHeight,
      itemHeight: itemHeight,
      items: hours
          .map((String item) => DropdownMenuItem(
                child: Text(item),
                value: item,
              ))
          .toList(),
      onChanged: onChanged,
    );
  }
}
