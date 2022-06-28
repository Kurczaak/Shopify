import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/cart_and_favourite/cart_and_favourite_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/product/product_snippets.dart';
import 'package:shopify_client/presentation/product/widgets/number_picker_dialog.dart';

class AddToCartAndFavouriteColumn extends StatelessWidget {
  const AddToCartAndFavouriteColumn(
    this.product, {
    Key? key,
  }) : super(key: key);
  final PricedProduct product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartAndFavouriteBloc>(
      create: (context) => getIt<CartAndFavouriteBloc>(),
      child: BlocConsumer<CartAndFavouriteBloc, CartAndFavouriteState>(
        listenWhen: (previous, current) {
          if (previous.isLoading && !current.isLoading) {
            return true;
          }
          if (current.failureOption.isSome()) {
            return true;
          }
          return false;
        },
        listener: ((context, state) {
          state.failureOption.fold(
              () => FlushbarHelper.createSuccess(
                      message: "Added product to the cart!")
                  .show(context),
              (failure) => FlushbarHelper.createError(
                    message: failure.map(
                        noInternetConnection: (_) => 'No internet connection',
                        timeout: (_) => 'Connection timed out',
                        invalidCartItem: (_) => 'Product error',
                        unexpected: (_) => 'An unexpected error has occured'),
                  ).show(context));
        }),
        builder: (context, state) => Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: state.isLoading
                    ? const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(child: CircularProgressIndicator()),
                      )
                    : InkWell(
                        onTap: () {
                          context.read<CartAndFavouriteBloc>().add(
                              CartAndFavouriteEvent.addToCart(
                                  product: product, quantity: 1));
                        },
                        onLongPress: () async {
                          final bloc = context.read<CartAndFavouriteBloc>();
                          await showDialog(
                              context: context,
                              builder: (context) {
                                return ShopifyNumberPickerDialog(
                                  title: product.name.getOrCrash(),
                                  subtitle:
                                      "How many do you wish to add to the cart?",
                                  confirmText: "Add",
                                  cancelText: "Cancel",
                                  onConfirm: (int quantity) {
                                    bloc.add(CartAndFavouriteEvent.addToCart(
                                        product: product, quantity: quantity));
                                  },
                                  onCancel: () {
                                    Navigator.of(context).pop();
                                  },
                                  imgUrl: product.photo.getOrCrash(),
                                );
                              });
                        },
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: InkWell(
                  onTap: () {
                    context
                        .read<CartAndFavouriteBloc>()
                        .add(const CartAndFavouriteEvent.addToFavourite());
                  },
                  child: Icon(
                    Icons.favorite_border,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
