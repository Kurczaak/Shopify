import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopify_manager/application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_icon_text_button.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/registration_progress_bar.dart';
import '../../routes/router.gr.dart';

class LogoPickerPage extends StatelessWidget {
  const LogoPickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopLogoPickerBloc, ShopLogoPickerState>(
      listener: (context, state) {
        state.whenPartial(error: (Error error) {
          final ImageFailure failure = error.failure as ImageFailure;

          FlushbarHelper.createError(
              message: failure.when(
                  unexpected: () => 'Unexpected Failure',
                  noImageSelected: () => 'No Image has been selected',
                  invalidImageSize: () => 'Invalid Image Size')).show(context);
        });
      },
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const RegistrationProgressRow(
                    title: 'Choose Logo',
                    subtitle: 'Upload logo of your online shop',
                    pageNum: 4,
                  ),
                  const SizedBox(height: 24),
                  ShopifyIconTextButton(
                    icon: Icons.image,
                    title: 'Logo',
                    subtitle: 'Upload shop\'s logo',
                    error: state.isError(),
                    onPressed: () => context
                        .read<ShopLogoPickerBloc>()
                        .add(const ShopLogoPickerEvent.getShopLogo()),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 300,
                    child: state.when(
                      initial: () => Icon(
                        Icons.image,
                        color: Theme.of(context).primaryColor,
                        size: 100,
                      ),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      loaded: (loaded) => Image.file(loaded.logo.getOrCrash()),
                      error: (error) => Icon(
                        Icons.image,
                        color: Theme.of(context).errorColor,
                        size: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (context.read<ShopLogoPickerBloc>().state.isLoaded()) {
                    context.router.navigate(RegistrationRecapRoute());
                  } else {
                    FlushbarHelper.createError(
                            message: 'No logo chosen. Pick a valid image')
                        .show(context);
                  }
                },
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
