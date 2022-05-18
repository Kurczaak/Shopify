import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shopify_client/presentation/core/widgets/green_corner_background.dart';
import 'package:shopify_client/presentation/routes/router.gr.dart';
import 'package:progress_indicators/progress_indicators.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

Future<void> loadAuthWrapper(BuildContext context) async {
  await Future.delayed(const Duration(seconds: 4));
  context.router.replace(const AuthWrapperRoute());
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      loadAuthWrapper(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GreenCornerBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeartbeatProgressIndicator(
                startScale: .5,
                endScale: 1,
                child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Image.asset(
                      'images/logo.png',
                      fit: BoxFit.fill,
                    )),
              ),
              const SizedBox(height: 20),
              HeartbeatProgressIndicator(
                startScale: .5,
                endScale: 1,
                child: const Text(
                  'SHOPIFY CLIENT',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
