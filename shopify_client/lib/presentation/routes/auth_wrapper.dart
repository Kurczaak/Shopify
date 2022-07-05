import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/auth/auth_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/routes/router.gr.dart';

class AuthWrapperPage extends StatelessWidget {
  const AuthWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      listener: ((context, state) {
        state.when(
            initial: () {},
            authenticated: () {
              context.router.replace(const ShopPickerRoute());
            },
            unauthenticated: () {
              context.router.replace(const SignInRoute());
            });
      }),
      child: BlocProvider<AuthBloc>(
          child: const AutoRouter(), create: (context) => getIt<AuthBloc>()),
    );
  }
}
