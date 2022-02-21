import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/hour_dropdown_picker.dart';
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

class DebugPage extends StatelessWidget {
  const DebugPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProcessAppBar(
        appBar: AppBar(),
        title: 'Register Shop',
      ),
      body: BlocProvider(
        create: (context) => getIt<ShopLogoPickerBloc>(),
        child: BlocConsumer<ShopLogoPickerBloc, ShopLogoPickerState>(
          listener: (context, state) {
            state.whenPartial(error: (Error error) {
              final ImageFailure failure = error.failure as ImageFailure;

              FlushbarHelper.createError(
                      message: failure.when(
                          unexpected: () => 'Unexpected Failure',
                          noImageSelected: () => 'No Image has been selected',
                          invalidImageSize: () => 'Invalid Image Size'))
                  .show(context);
            });
          },
          builder: (context, state) => Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Choose logo',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          'Upload logo of your online shop',
                          style: TextStyle(
                            color: Theme.of(context).secondaryHeaderColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const Text('4/4'),
                  ],
                ),
                const SizedBox(height: 24),
                OutlinedButton(
                  onPressed: () {
                    context.read<ShopLogoPickerBloc>().add(const GetShopLogo());
                  },
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Logo',
                                style: TextStyle(
                                  color: Theme.of(context).secondaryHeaderColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Upload shop\'s logo',
                                style: TextStyle(
                                  color: Theme.of(context).secondaryHeaderColor,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                              color: state.isError()
                                  ? Theme.of(context).errorColor
                                  : Theme.of(context).primaryColor,
                              borderRadius: const BorderRadius.horizontal(
                                  left: Radius.zero,
                                  right: Radius.circular(8))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              SizedBox(width: 10),
                              Icon(
                                Icons.image,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                                size: 40,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                state.when(
                  initial: () => Icon(
                    Icons.image,
                    color: Theme.of(context).primaryColor,
                    size: 100,
                  ),
                  loading: () => Center(child: CircularProgressIndicator()),
                  loaded: (loaded) => Image.file(loaded.logo.getOrCrash()),
                  error: (error) => Icon(
                    Icons.image,
                    color: Theme.of(context).errorColor,
                    size: 100,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
