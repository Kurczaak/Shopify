import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_text_form_field.dart';
import 'package:shopify_manager/presentation/register_shop/widgets/registration_progress_bar.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ShopFormPage extends StatelessWidget {
  ShopFormPage({Key? key}) : super(key: key);

  final _shopNameController = TextEditingController();
  final _streetNameController = TextEditingController();
  final _streetNumberController = TextEditingController();
  final _apartmentNumberController = TextEditingController();
  final _postalCodeController = TextEditingController();
  final _cityNameController = TextEditingController();

  // void _setControllersInitialText(TextEditingController controller,
  //     Either<ValueFailure<String>, String> value) {
  //   controller.text = value.fold((f) => '', (r) => r);
  // }

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProcessAppBar(
        title: 'Register Shop',
        appBar: AppBar(),
        onPressed: () {},
      ),
      body: BlocConsumer<ShopFormBloc, ShopFormState>(
        listener: (context, state) async {
          if (state.saved) await context.router.navigate(DebugLocationRoute());
        },
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 28),
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
                child: ElevatedButton(
                  onPressed: () async {
                    FocusManager.instance.primaryFocus?.unfocus();
                    context.read<ShopFormBloc>().state.saved
                        ? await context.router.navigate(DebugLocationRoute())
                        : context
                            .read<ShopFormBloc>()
                            .add(const ShopFormEvent.proceeded());
                  },
                  child: const Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
