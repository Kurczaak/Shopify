import 'package:flutter/material.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_manager/application/shop/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_presentation/shopify_presentation.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/registration_progress_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:auto_route/auto_route.dart';
import '../../routes/router.gr.dart';

class RegistrationRecapPage extends StatefulWidget {
  const RegistrationRecapPage({Key? key}) : super(key: key);

  @override
  State<RegistrationRecapPage> createState() => _RegistrationRecapPageState();
}

class _RegistrationRecapPageState extends State<RegistrationRecapPage> {
  late Shop shop;
  late ShopLogo logo;
  late String shopName;
  late String postalCode;
  late String city;
  late String street;
  late String streetNumber;
  late String apartmentNumber;
  late Week week;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ShopRegistrationBloc, ShopRegistrationState>(
        listener: (context, state) {
          if (!state.isSaving) {
            state.saveFailureOrSuccessOption.fold(
                () => null,
                (failureOrUnit) => failureOrUnit.fold(
                    (f) => showDialog(
                        context: context,
                        builder: (context) => ShopifyAlertDialog(
                              title: 'Error',
                              subtitle: f.map(
                                  incorrectLocationGiven: (_) =>
                                      "Incorrect location",
                                  noInternetConnection: (_) =>
                                      "No internet connection",
                                  locationPermissionDenied: (_) =>
                                      'Location permissions denied',
                                  noShopFound: (_) => 'No shop has been found',
                                  timeout: (_) =>
                                      'Connection timeout. Try again later or check your internet connection',
                                  unexpected: (_) =>
                                      'An unexpected error has occured',
                                  insufficientPermission: (_) =>
                                      'Insufficient Permission',
                                  unableToUpdate: (_) => 'Unable to update'),
                              type: DialogType.error,
                              onConfirm: () {
                                context.router.pop();
                              },
                            )),
                    (unit) => showDialog(
                        context: context,
                        builder: (context) => ShopifyAlertDialog(
                            title: 'Success',
                            subtitle: 'Your shop has been succesfully uploaded',
                            onConfirm: () {
                              getIt.resetLazySingleton<ShopRegistrationBloc>();
                              context.router.popUntilRouteWithName(
                                  DebugDashboardRoute.name);
                            }))));
          }
        },
        builder: (context, state) => Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const RegistrationProgressRow(
                title: 'Recap',
                subtitle:
                    'Check your shop details and register it if you\'re ready to go!',
                pageNum: 5,
              ),
              ShopRecap(
                fileLogo: context
                    .read<ShopRegistrationBloc>()
                    .state
                    .shopLogo
                    .getOrElse(() => throw UnimplementedError()),
                shop: context.read<ShopRegistrationBloc>().state.shop,
              ),
              const Spacer(),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    getIt<ShopRegistrationBloc>()
                        .add(const ShopRegistrationEvent.shopSaved());
                  },
                  child: const Text('Register'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
