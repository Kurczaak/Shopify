import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/application/auth/auth_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shopify_manager/presentation/core/widgets/green_corner_background.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';
import 'package:progress_indicators/progress_indicators.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) async {
              //TODO remove artificial delay
              //await Future.delayed(const Duration(seconds: 4));
              context.router.replace(const HomeRoute());
            },
            unauthenticated: (_) async {
              //TODO remove artificial delay
              await Future.delayed(const Duration(seconds: 4));
              context.router.replace(const SignInRoute());
            });
      },
      child: Scaffold(
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
      ),
    );
  }
}
