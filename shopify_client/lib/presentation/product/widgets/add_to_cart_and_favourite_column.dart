import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/cart_and_favourite/cart_and_favourite_bloc.dart';
import 'package:shopify_client/application/favouirtes_actor/favourites_actor_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavouritesActorBloc>(
            create: (context) => getIt<FavouritesActorBloc>()
              ..add(FavouritesActorEvent.initialize(
                  productId: product.productId))),
        BlocProvider<CartActorBloc>(
            create: (context) => getIt<CartActorBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<CartActorBloc, CartActorState>(
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
          BlocListener<FavouritesActorBloc, FavouritesActorState>(
              listener: (context, state) {
            state.favouriteFailureOption.fold(
                () => null,
                (failure) => FlushbarHelper.createError(
                      message: failure.map(
                          alreadyInFavoruites: (_) =>
                              'Product already in favourites!',
                          indalidProduct: (_) => 'Invalid product!',
                          notInFavourites: (_) =>
                              'Product is not in favourites.',
                          insufficientPermission: (_) =>
                              'Insufficient permission',
                          noInternetConnection: (_) => 'No internet connection',
                          timeout: (_) => 'Connection timed out',
                          unexpected: (_) => 'An unexpected error has occured'),
                    ).show(context));
          }),
        ],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: context.read<CartActorBloc>().state.isLoading
                    ? const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(child: CircularProgressIndicator()),
                      )
                    : InkWell(
                        onTap: () {
                          context.read<CartActorBloc>().add(
                              CartActorEvent.addToCart(
                                  product: product, quantity: 1));
                        },
                        onLongPress: () async {
                          final bloc = context.read<CartActorBloc>();
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
                                    bloc.add(CartActorEvent.addToCart(
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
                    context.read<FavouritesActorBloc>().add(
                        FavouritesActorEvent.toggleFavourite(
                            productId: product.productId));
                  },
                  child: Icon(
                    context.read<FavouritesActorBloc>().state.isFavouirte.fold(
                          () => Icons.favorite_border,
                          (isFavourite) => isFavourite
                              ? Icons.favorite
                              : Icons.favorite_border,
                        ),
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
