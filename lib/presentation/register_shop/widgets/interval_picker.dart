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

class IntervalPicker extends StatefulWidget {
  IntervalPicker({Key? key, required this.hours, this.disabled = false})
      : super(key: key);
  final hours;
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
