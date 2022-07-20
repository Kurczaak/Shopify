import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/cart_and_favourite/cart_and_favourite_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/product/widgets/number_picker_dialog.dart';
import 'package:shopify_domain/product/product_snippets.dart';

class AddToCartWidget extends StatelessWidget {
  final PricedProduct pricedProduct;
  const AddToCartWidget({Key? key, required this.pricedProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartActorBloc>(
      create: (context) => getIt<CartActorBloc>(),
      child: BlocConsumer<CartActorBloc, CartActorState>(
          builder: (context, state) => state.isLoading
              ? const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(child: CircularProgressIndicator()),
                )
              : InkWell(
                  onTap: () {
                    context.read<CartActorBloc>().add(CartActorEvent.addToCart(
                        product: pricedProduct, quantity: 1));
                  },
                  onLongPress: () async {
                    final bloc = context.read<CartActorBloc>();
                    await showDialog(
                        context: context,
                        builder: (context) {
                          return ShopifyNumberPickerDialog(
                            title: pricedProduct.name.getOrCrash(),
                            subtitle:
                                "How many do you wish to add to the cart?",
                            confirmText: "Add",
                            cancelText: "Cancel",
                            onConfirm: (int quantity) {
                              bloc.add(CartActorEvent.addToCart(
                                  product: pricedProduct, quantity: quantity));
                            },
                            onCancel: () {
                              Navigator.of(context).pop();
                            },
                            imgUrl: pricedProduct.photo.getOrCrash(),
                          );
                        });
                  },
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
          listener: (context, state) {
            state.cartFailureOption.fold(
                () => null,
                (failure) => FlushbarHelper.createError(
                      message: failure.map(
                          couldNotInitialize: (_) =>
                              'Could not initialize your liked items',
                          itemDoesNotExist: (_) => 'This item does not exists',
                          insufficientPermission: (_) =>
                              'Insufficient permission',
                          emptyCart: (_) => '',
                          noInternetConnection: (_) => 'No internet connection',
                          timeout: (_) => 'Connection timed out',
                          invalidCartItem: (_) => 'Product error',
                          unexpected: (_) => 'An unexpected error has occured'),
                    ).show(context));
          }),
    );
  }
}
