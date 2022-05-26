import 'package:flutter/material.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_manager/presentation/register_shop/opening_hours/misc/day_presentation_classes.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/day_row.dart';

class WeekTable extends StatelessWidget {
  final Week week;
  final void Function(DayPrimitive) onMondayChanged;
  final void Function(DayPrimitive) onTuesdayChanged;
  final void Function(DayPrimitive) onWednesdayChanged;
  final void Function(DayPrimitive) onThursdayChanged;
  final void Function(DayPrimitive) onFridayChanged;
  final void Function(DayPrimitive) onSaturdayChanged;
  final void Function(DayPrimitive) onSundayChanged;
  const WeekTable(
      {Key? key,
      required this.week,
      required this.onMondayChanged,
      required this.onTuesdayChanged,
      required this.onWednesdayChanged,
      required this.onThursdayChanged,
      required this.onFridayChanged,
      required this.onSaturdayChanged,
      required this.onSundayChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DayRow(
          day: DayPrimitive.fromDomain(week.monday),
          onChanged: onMondayChanged,
        ),
        DayRow(
          day: DayPrimitive.fromDomain(week.tuesday),
          onChanged: onTuesdayChanged,
        ),
        DayRow(
          day: DayPrimitive.fromDomain(week.wednesday),
          onChanged: onWednesdayChanged,
        ),
        DayRow(
          day: DayPrimitive.fromDomain(week.thursday),
          onChanged: onThursdayChanged,
        ),
        DayRow(
          day: DayPrimitive.fromDomain(week.friday),
          onChanged: onFridayChanged,
        ),
        DayRow(
          day: DayPrimitive.fromDomain(week.saturday),
          onChanged: onSaturdayChanged,
        ),
        DayRow(
          day: DayPrimitive.fromDomain(week.sunday),
          onChanged: onSundayChanged,
        ),
      ],
    );
  }
}
