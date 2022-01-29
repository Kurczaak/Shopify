import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/day_adjuster.dart';

class OpeningHoursPage extends StatelessWidget {
  OpeningHoursPage({Key? key}) : super(key: key);
  // TODO final _postalCodeController = TextEditingController();
  final mondayController = DayAdjusterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: const Text(
            'Register Shop',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [Image.asset('images/logo.png')],
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FittedBox(
              fit: BoxFit.contain,
              child: FaIcon(
                FontAwesomeIcons.arrowCircleLeft,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Opening hours',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'Adjust the time users can pickup orders',
                        style: TextStyle(
                          color: Theme.of(context).secondaryHeaderColor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const Text('3/4'),
                ],
              ),
              const SizedBox(height: 30),
              DayAdjuster(
                day: 'Mon',
                controller: mondayController,
              ),
              DayAdjuster(
                day: 'Tue',
                controller: mondayController,
              ),
              DayAdjuster(
                day: 'Wed',
                controller: mondayController,
              ),
              DayAdjuster(
                day: 'Thu',
                controller: mondayController,
              ),
              DayAdjuster(
                day: 'Fri',
                controller: mondayController,
              ),
              DayAdjuster(
                day: 'Sat',
                controller: mondayController,
              ),
              DayAdjuster(
                day: 'Sun',
                controller: mondayController,
              ),
              const Spacer(),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Next'),
                ),
              ),
            ],
          ),
        ));
  }
}
