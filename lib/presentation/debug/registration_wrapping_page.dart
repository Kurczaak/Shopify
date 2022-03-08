import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_text_form_field.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/registration_progress_bar.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/hour_dropdown_picker.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/registration_progress_bar.dart';
import 'package:shopify_manager/presentation/routes/router.dart';
import 'package:shopify_manager/presentation/routes/router.dart';
import 'package:shopify_manager/presentation/routes/router.dart';
import 'package:shopify_manager/presentation/sign_in/widgets/sign_up_form.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class RegistrationWrappingPage extends StatelessWidget {
  const RegistrationWrappingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MultiBlocProvider(
      providers: [
        BlocProvider<ShopRegistrationBloc>(
            create: (context) => getIt<ShopRegistrationBloc>()),
        BlocProvider<ShopFormBloc>(create: (context) => getIt<ShopFormBloc>()),
        BlocProvider<ShopLocationPickerBloc>(
            create: (context) => getIt<ShopLocationPickerBloc>()),
      ],
      child: Column(
        children: [
          Expanded(child: AutoRouter()),
        ],
      ),
    ));
  }
}

//  Scaffold(
//   appBar: ProcessAppBar(
//     title: 'Register Shop',
//     appBar: AppBar(),
//     onPressed: () {},
//   ),
//   body: MultiBlocProvider(
//     providers: [
//       BlocProvider(create: (context) => getIt<ShopRegistrationBloc>()),
//       BlocProvider(create: (context) => getIt<ShopFormBloc>()),
//       BlocProvider(create: (context) => getIt<ShopLocationPickerBloc>()),
//     ],
//     child: Column(
//       children: [
//         AutoRouter(),
//         SizedBox(
//                       height: 50,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           context
//                               .read<ShopFormBloc>()
//                               .add(const ShopFormEvent.proceeded());
//                         },
//                         child: const Text('Location'),
//                       ),
//                     ),
//       ],
//     ),
//   ),
// );
