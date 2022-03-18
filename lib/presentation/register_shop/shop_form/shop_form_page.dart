import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_alert_dialog.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_buttons.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_text_form_field.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/registration_progress_bar.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ShopFormPage extends StatefulWidget {
  ShopFormPage({Key? key}) : super(key: key);

  @override
  State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
  final _shopNameController = TextEditingController();

  final _streetNameController = TextEditingController();

  final _streetNumberController = TextEditingController();

  final _apartmentNumberController = TextEditingController();

  final _postalCodeController = TextEditingController();

  final _cityNameController = TextEditingController();

  String _modifyPostalCode(String input) {
    if (input.length == 3 && !_postalCodeController.text.contains('-')) {
      final text = _postalCodeController.text;
      final firstPart = text.substring(0, 2);
      final secondPart = text.substring(2);
      final postalCode = firstPart + '-' + secondPart;
      return postalCode;
    } else {
      return input;
    }
  }

  @override
  void initState() {
    final bloc = getIt<ShopFormBloc>();
    final shop = bloc.state.shop;
    _shopNameController.text = shop.shopName.value.getOrElse(() => '');
    _streetNameController.text =
        shop.address.streetName.value.getOrElse(() => '');
    _streetNumberController.text =
        shop.address.streetNumber.value.getOrElse(() => '');
    _apartmentNumberController.text =
        shop.address.apartmentNumber.value.getOrElse(() => '');
    _postalCodeController.text =
        shop.address.postalCode.value.getOrElse(() => '');
    _cityNameController.text = shop.address.city.value.getOrElse(() => '');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: BlocConsumer<ShopFormBloc, ShopFormState>(
        listener: (context, state) async {},
        builder: (context, state) => WillPopScope(
          onWillPop: () async {
            final dialogOutput = await showDialog<bool>(
                context: context,
                builder: (context) {
                  return ShopifyAlertDialog(
                    title: 'Do you want to leave?',
                    subtitle: 'All your progres will be lost',
                    cancelText: 'Cancel',
                    confirmText: 'Ok',
                    onCancel: () {
                      Navigator.of(context).pop(false);
                    },
                    onConfirm: () {
                      Navigator.of(context).pop(true);
                    },
                  );
                });
            if (dialogOutput != null && dialogOutput) {
              getIt.resetLazySingleton<ShopRegistrationBloc>();
              return true;
            } else {
              return false;
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const RegistrationProgressRow(
                title: 'Shop Details',
                subtitle: 'Enter shop details',
                pageNum: 1,
              ),
              const SizedBox(height: 30),
              Form(
                child: Expanded(
                  child: ListView(
                    children: [
                      ShopifyTextFormField(
                        controller: _shopNameController,
                        fieldName: 'Shop Name',
                        onChanged: (value) => context
                            .read<ShopFormBloc>()
                            .add(ShopFormEvent.nameChanged(value)),
                        showErrorMessages: state.showErrorMessages,
                        value: state.shop.shopName.value,
                      ),
                      const SizedBox(height: 20),
                      ShopifyTextFormField(
                        controller: _streetNameController,
                        fieldName: 'Street Name',
                        onChanged: (value) => context
                            .read<ShopFormBloc>()
                            .add(ShopFormEvent.streetNameChanged(value)),
                        showErrorMessages: state.showErrorMessages,
                        value: state.shop.address.streetName.value,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Flexible(
                            flex: 5,
                            child: ShopifyTextFormField(
                              keyboardType: TextInputType.number,
                              controller: _streetNumberController,
                              fieldName: 'Street Number',
                              onChanged: (value) => context
                                  .read<ShopFormBloc>()
                                  .add(
                                      ShopFormEvent.streetNumberChanged(value)),
                              showErrorMessages: state.showErrorMessages,
                              value: state.shop.address.streetNumber.value,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            flex: 4,
                            child: ShopifyTextFormField(
                              keyboardType: TextInputType.streetAddress,
                              controller: _apartmentNumberController,
                              fieldName: 'Apartment Number',
                              onChanged: (value) => context
                                  .read<ShopFormBloc>()
                                  .add(ShopFormEvent.apartmentNumberChanged(
                                      value)),
                              showErrorMessages: state.showErrorMessages,
                              value: state.shop.address.apartmentNumber.value,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ShopifyTextFormField(
                        controller: _postalCodeController,
                        keyboardType: TextInputType.number,
                        fieldName: 'Postal Code',
                        onChanged: (value) {
                          _postalCodeController.text = _modifyPostalCode(value);
                          _postalCodeController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _postalCodeController.text.length));

                          context.read<ShopFormBloc>().add(
                              ShopFormEvent.postalCodeChanged(
                                  _postalCodeController.text));
                        },
                        showErrorMessages: state.showErrorMessages,
                        value: state.shop.address.postalCode.value,
                      ),
                      const SizedBox(height: 20),
                      ShopifyTextFormField(
                        controller: _cityNameController,
                        fieldName: 'City',
                        onChanged: (value) => context
                            .read<ShopFormBloc>()
                            .add(ShopFormEvent.cityChanged(value)),
                        showErrorMessages: state.showErrorMessages,
                        value: state.shop.address.city.value,
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: ShopifyPrimaryButton(
                    onPressed: () async {
                      FocusManager.instance.primaryFocus?.unfocus();
                      await context.router.navigate(LocationPickerRoute());
                      context
                          .read<ShopFormBloc>()
                          .add(const ShopFormEvent.proceeded());
                    },
                    text: 'Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
