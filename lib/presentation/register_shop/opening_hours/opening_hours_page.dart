import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopify_manager/application/shopping/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';
import 'package:shopify_manager/presentation/register_shop/opening_hours/misc/day_presentation_classes.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/day_row.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/registration_progress_bar.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/week_table.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';
import 'package:shopify_manager/presentation/routes/router.dart';

class OpeningHoursPage extends StatelessWidget {
  OpeningHoursPage({Key? key}) : super(key: key);

  void onDayChanged(DayPrimitive day, ShopTimePickerBloc bloc) {
    final lowercaseName = day.day.toLowerCase();

    switch (lowercaseName) {
      case 'monday':
        bloc.add(ShopTimePickerEvent.mondayChanged(day));
        break;
      case 'tuesday':
        bloc.add(ShopTimePickerEvent.tuesdayChanged(day));
        break;
      case 'wednesday':
        bloc.add(ShopTimePickerEvent.wednesdayChanged(day));
        break;
      case 'thursday':
        bloc.add(ShopTimePickerEvent.thursdayChanged(day));
        break;
      case 'friday':
        bloc.add(ShopTimePickerEvent.fridayChanged(day));
        break;
      case 'saturday':
        bloc.add(ShopTimePickerEvent.saturdayChanged(day));
        break;
      case 'sunday':
        bloc.add(ShopTimePickerEvent.sundayChanged(day));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopTimePickerBloc, ShopTimePickerState>(
      listener: (context, state) {},
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 28),
          const RegistrationProgressRow(
            title: 'Opening hours',
            subtitle: 'Adjust the time users can pickup orders',
            pageNum: 3,
          ),
          const SizedBox(height: 30),
          WeekTable(
              week: context.read<ShopTimePickerBloc>().state.week,
              onMondayChanged: (day) {
                onDayChanged(day, context.read<ShopTimePickerBloc>());
              },
              onTuesdayChanged: (day) {
                onDayChanged(day, context.read<ShopTimePickerBloc>());
              },
              onWednesdayChanged: (day) {
                onDayChanged(day, context.read<ShopTimePickerBloc>());
              },
              onThursdayChanged: (day) {
                onDayChanged(day, context.read<ShopTimePickerBloc>());
              },
              onFridayChanged: (day) {
                onDayChanged(day, context.read<ShopTimePickerBloc>());
              },
              onSaturdayChanged: (day) {
                onDayChanged(day, context.read<ShopTimePickerBloc>());
              },
              onSundayChanged: (day) {
                onDayChanged(day, context.read<ShopTimePickerBloc>());
              }),
          const Spacer(),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                context.router.navigate(const DebugRoute());
                context
                    .read<ShopTimePickerBloc>()
                    .add(const ShopTimePickerEvent.proceeded());
              },
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}
