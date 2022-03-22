import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_progress_indicator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shopify_manager/application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';

class RegistrationWrappingPage extends StatelessWidget {
  const RegistrationWrappingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ShopRegistrationBloc>(
            create: (context) => getIt<ShopRegistrationBloc>()),
        BlocProvider<ShopFormBloc>(create: (context) => getIt<ShopFormBloc>()),
        BlocProvider<ShopLocationPickerBloc>(
            create: (context) => getIt<ShopLocationPickerBloc>()),
        BlocProvider<ShopTimePickerBloc>(
            create: (context) => getIt<ShopTimePickerBloc>()),
        BlocProvider<ShopLogoPickerBloc>(
            create: (context) => getIt<ShopLogoPickerBloc>()),
      ],
      child: BlocConsumer<ShopRegistrationBloc, ShopRegistrationState>(
        listener: (_, __) {},
        builder: (context, state) => LoadingOverlay(
          opacity: .5,
          color: Colors.black,
          progressIndicator: const ShopifyProgressIndicator(
            duration: Duration(milliseconds: 700),
          ),
          isLoading: state.isSaving,
          child: Scaffold(
            appBar: ProcessAppBar(
              onPressed: () => context.router.popTop(),
              appBar: AppBar(),
              title: 'Register Shop',
            ),
            body: MultiBlocListener(listeners: [
              BlocListener<ShopRegistrationBloc, ShopRegistrationState>(
                  listener: (_, __) {}),
              BlocListener<ShopFormBloc, ShopFormState>(listener: (_, __) {}),
              BlocListener<ShopLocationPickerBloc, ShopLocationPickerState>(
                  listener: (_, __) {}),
            ], child: const AutoRouter()),
          ),
        ),
      ),
    );
  }
}
