import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopify_manager/application/shopping/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/day_row.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/registration_progress_bar.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';
import 'package:shopify_manager/presentation/routes/router.dart';

class OpeningHoursPage extends StatelessWidget {
  OpeningHoursPage({Key? key}) : super(key: key);
  final hours = _generateHours();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProcessAppBar(
        appBar: AppBar(),
        title: 'Register Shop',
        onPressed: () => context.router.pop(),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<ShopRegistrationBloc>(
              create: (context) => getIt<ShopRegistrationBloc>()),
          BlocProvider<ShopTimePickerBloc>(
              create: (context) => getIt<ShopTimePickerBloc>()),
        ],
        child: BlocConsumer<ShopTimePickerBloc, ShopTimePickerState>(
          listener: (context, state) {
            if (state.saved) {
              context.router.push(DebugRoute());
            }
          },
          builder: (context, state) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 28),
                const RegistrationProgressRow(
                  title: 'Opening hours',
                  subtitle: 'Adjust the time users can pickup orders',
                  pageNum: 3,
                ),
                const SizedBox(height: 30),
                DayRow(day: 'Mon', hours: hours),
                DayRow(day: 'Tue', hours: hours),
                DayRow(day: 'Wed', hours: hours),
                DayRow(day: 'Thu', hours: hours),
                DayRow(day: 'Fri', hours: hours),
                DayRow(day: 'Sat', hours: hours),
                DayRow(day: 'Sun', hours: hours),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        context
                            .read<ShopTimePickerBloc>()
                            .add(const ShopTimePickerEvent.proceeded());
                      },
                      child: const Text('Next'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> _generateHours() {
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
