import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/application/auth/auth_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shopify_presentation/shopify_presentation.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';

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
              await Future.delayed(const Duration(seconds: 4));
              context.router.replace(const DebugDashboardRoute());
            },
            unauthenticated: (_) async {
              //TODO remove artificial delay
              await Future.delayed(const Duration(seconds: 4));
              context.router.replace(const SignInRoute());
            });
      },
      child: const Scaffold(
        body: SplashWidget(title: 'SHOPIFY MANAGER'),
      ),
    );
  }
}
