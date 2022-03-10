import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'routes/router.gr.dart';

class DebugDashboardPage extends StatelessWidget {
  const DebugDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.router.push(const RegistrationWrappingRoute());
                },
                child: const Text('Register Shop'))
          ],
        ),
      ),
    );
  }
}
