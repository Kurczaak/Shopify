import 'package:flutter/material.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/injection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text('Sign Out'),
      onPressed: () async => await getIt<IAuthFacade>().signOut(),
    );
  }
}
