import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/hour_dropdown_picker.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/interval_picker.dart';
import 'package:shopify_manager/presentation/sign_in/widgets/sign_up_form.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
