import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/core/widgets/process_appbar.dart';

class ShopDetailsPage extends StatelessWidget {
  ShopDetailsPage({Key? key}) : super(key: key);
  final _postalCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProcessAppBar(
        title: 'Register Shop',
        appBar: AppBar(),
      ),
      body: BlocProvider(
        create: (context) => getIt<ShopFormBloc>(),
        child: BlocConsumer<ShopFormBloc, ShopFormState>(
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold((failure) {
                      FlushbarHelper.createError(
                        message: failure.map(
                            unexpected: (_) => 'Unexpected Error',
                            insufficientPermission: (_) =>
                                'Insufficient Permission',
                            unableToUpdate: (_) => 'Unable to update'),
                      ).show(context);
                    }, (_) {}));
          },
          builder: (context, state) => LoadingOverlay(
            opacity: .3,
            color: Colors.black,
            isLoading: state.isSaving,
            child: (Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Shop details',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            'Enter shop details',
                            style: TextStyle(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      const Text('1/4'),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Form(
                    child: Expanded(
                      child: ListView(
                        children: [
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Shop Name'),
                            onChanged: (value) => context
                                .read<ShopFormBloc>()
                                .add(ShopFormEvent.nameChanged(value)),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Street'),
                            onChanged: (value) => context
                                .read<ShopFormBloc>()
                                .add(ShopFormEvent.streetNameChanged(value)),
                          ),
                          // const SizedBox(height: 20),
                          // TextFormField(
                          //   decoration: const InputDecoration(
                          //       labelText: 'Street Number'),
                          // ),
                          const SizedBox(height: 20),
                          TextFormField(
                            maxLength: 6,
                            onChanged: (value) {
                              if (value.length == 3 &&
                                  !_postalCodeController.text.contains('-')) {
                                final text = _postalCodeController.text;
                                final firstPart = text.substring(0, 2);
                                final secondPart = text.substring(2);
                                final postalCode = firstPart + '-' + secondPart;
                                _postalCodeController.text = postalCode;
                                _postalCodeController.selection =
                                    TextSelection.fromPosition(TextPosition(
                                        offset:
                                            _postalCodeController.text.length));
                              }
                              context.read<ShopFormBloc>().add(
                                  ShopFormEvent.postalCodeChanged(
                                      _postalCodeController.text));
                            },
                            controller: _postalCodeController,
                            decoration: const InputDecoration(
                              labelText: 'Postal Code',
                              counterText: '',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'City'),
                            onChanged: (value) => context
                                .read<ShopFormBloc>()
                                .add(ShopFormEvent.cityChanged(value)),
                          ),
                          const SizedBox(height: 30),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                context
                                    .read<ShopFormBloc>()
                                    .add(const ShopFormEvent.saved());
                              },
                              child: const Text('Next'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
