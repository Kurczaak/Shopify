import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shopify_presentation/shopify_presentation.dart';
import 'package:shopify_client/presentation/routes/router.gr.dart';

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
    return const Scaffold(body: SplashWidget(title: 'SHOPIFY CLIENT!'));
  }
}
