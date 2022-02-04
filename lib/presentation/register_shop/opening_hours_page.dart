import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/day_row.dart';

class OpeningHoursPage extends StatelessWidget {
  OpeningHoursPage({Key? key}) : super(key: key);
  final hours = _generateHours();

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
              DayRow(day: 'Mon', hours: hours),
              DayRow(day: 'Tue', hours: hours),
              DayRow(day: 'Wed', hours: hours),
              DayRow(day: 'Thu', hours: hours),
              DayRow(day: 'Fri', hours: hours),
              DayRow(day: 'Sat', hours: hours),
              DayRow(day: 'Sun', hours: hours),
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
