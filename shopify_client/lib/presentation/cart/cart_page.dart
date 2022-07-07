import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:shopify_client/application/cart_item/cart_item_bloc.dart';
import 'package:shopify_client/application/user_carts/user_carts_bloc.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_presentation/core/shopify_image.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCartsBloc>(
      create: (context) =>
          getIt<UserCartsBloc>()..add(const UserCartsEvent.watchAllCarts()),
      child: BlocConsumer<UserCartsBloc, UserCartsState>(
        listener: (context, state) {},
        builder: (context, state) => state.userCartsOption.fold(
          () => const Center(
            child: Text('No carts'),
          ),
          (userCarts) => RefreshIndicator(
            onRefresh: () async {
              context
                  .read<UserCartsBloc>()
                  .add(const UserCartsEvent.watchAllCarts());
            },
            child: LoadingOverlay(
              isLoading: state.isLoading,
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
                children: userCarts.carts
                    .getOrCrash()
                    .iter
                    .map((cart) => cart.failureOrUnit.fold(
                        (failure) => Container(),
                        (_) => Column(
                              children: [
                                Slidable(
                                  key: Key(cart.id.getOrCrash()),
                                  startActionPane: ActionPane(
                                    // A motion is a widget used to control how the pane animates.
                                    motion: const ScrollMotion(),

                                    // All actions are defined in the children parameter.
                                    children: [
                                      // A SlidableAction can have an icon and/or a label.
                                      SlidableAction(
                                        onPressed: (context) async {
                                          print('XDDDDDDDDDDDDDDD');
                                          print('KURWAAAASDASDASD');
                                          final result =
                                              await getIt<ICartFacade>()
                                                  .deleteCart(cart);
                                          print(result);
                                          print('XDDDDDDDDDDDDDDD');
                                          print('KURWAAAASDASDASD');
                                        },
                                        backgroundColor:
                                            const Color(0xFFFE4A49),
                                        foregroundColor: Colors.white,
                                        icon: Icons.delete,
                                        label: 'Delete',
                                      ),
                                      SlidableAction(
                                        onPressed: (context) {},
                                        backgroundColor:
                                            Theme.of(context).primaryColor,
                                        foregroundColor: Colors.white,
                                        icon: Icons.share,
                                        label: 'Share',
                                      ),
                                    ],
                                  ),

                                  // The end action pane is the one at the right or the bottom side.
                                  endActionPane: ActionPane(
                                    motion: const ScrollMotion(),
                                    children: [
                                      SlidableAction(
                                        // An action can be bigger than the others.

                                        onPressed: (context) {},
                                        backgroundColor:
                                            Theme.of(context).errorColor,
                                        foregroundColor: Colors.white,
                                        icon: Icons.favorite,
                                        label: 'Favourite',
                                      ),
                                      SlidableAction(
                                        onPressed: (context) {},
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        foregroundColor: Colors.white,
                                        icon: Icons.public,
                                        label: 'Nearby offers',
                                      ),
                                    ],
                                  ),
                                  child: Column(children: [
                                    ShopDetails(shop: cart.shop),
                                    CartDetailsWidget(
                                      cart: cart,
                                    ),
                                  ]),
                                ),
                                const Divider(
                                  thickness: 2,
                                  height: 2,
                                ),
                                const SizedBox(height: 10),
                              ],
                            )))
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ShopDetails extends StatelessWidget {
  const ShopDetails({Key? key, required this.shop}) : super(key: key);
  final Shop shop;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor.withOpacity(.1),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: ShopifyNetworkImage(shop.logoUrl.getOrCrash()),
          ),
          Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Text(shop.shopName.getOrCrash())),
          Flexible(
            fit: FlexFit.tight,
            flex: 3,
            child: FittedBox(
                fit: BoxFit.contain,
                child: Text(shop.address.toString(), softWrap: true)),
          ),
        ],
      ),
    );
  }
}

class CartDetailsWidget extends StatelessWidget {
  const CartDetailsWidget({Key? key, required this.cart}) : super(key: key);
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
        collapsed: Container(),
        header:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
              '${cart.numOfItems.toString()} product${(cart.numOfItems != 1) ? 's' : ''}'),
          Text('Total: ${cart.totalCost.toString()} zł'),
        ]),
        expanded: Column(
          children: [
            ...cart.cartItems
                .getOrCrash()
                .iter
                .map((cartItem) => CartItemWidget(cartItem: cartItem))
          ],
        ));
  }
}

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({Key? key, required this.cartItem}) : super(key: key);
  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartItemBloc>(
      create: (context) => getIt<CartItemBloc>()
        ..add(CartItemEvent.initialize(cartItem: cartItem)),
      child: BlocConsumer<CartItemBloc, CartItemState>(
          listener: (context, state) {},
          builder: (context, state) => state.cartItemOption.fold(
                () => const Center(
                  child: Text('Could not load cart item'),
                ),
                (_) => Slidable(
                  key: Key(cartItem.id.getOrCrash()),
                  startActionPane: ActionPane(
                    // A motion is a widget used to control how the pane animates.
                    motion: const ScrollMotion(),

                    // All actions are defined in the children parameter.
                    children: [
                      // A SlidableAction can have an icon and/or a label.
                      SlidableAction(
                        onPressed: (context) {
                          context
                              .read<CartItemBloc>()
                              .add(const CartItemEvent.remove());
                        },
                        backgroundColor: const Color(0xFFFE4A49),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                      SlidableAction(
                        onPressed: (context) {},
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        icon: Icons.share,
                        label: 'Share',
                      ),
                    ],
                  ),

                  // The end action pane is the one at the right or the bottom side.
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        // An action can be bigger than the others.

                        onPressed: (context) {},
                        backgroundColor: Theme.of(context).errorColor,
                        foregroundColor: Colors.white,
                        icon: Icons.favorite,
                        label: 'Favourite',
                      ),
                      SlidableAction(
                        onPressed: (context) {},
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        foregroundColor: Colors.white,
                        icon: Icons.public,
                        label: 'Nearby offers',
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Divider(),
                      Row(
                        children: [
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: ShopifyNetworkImage(
                                      cartItem.product.photo.getOrCrash()))),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(cartItem.product.name.getOrCrash()),
                                Text(cartItem.product.brand.getOrCrash()),
                              ],
                            ),
                          ),
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Text(
                                  '${cartItem.cost.toStringAsFixed(2)} zł')),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Material(
                                  child: InkWell(
                                      onTap: () {
                                        context.read<CartItemBloc>().add(
                                            const CartItemEvent.increment());
                                      },
                                      child: Icon(
                                        Icons.add_box_outlined,
                                        size: 40,
                                        color: Theme.of(context).primaryColor,
                                      )),
                                ),
                                state.isLoading
                                    ? const Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    : Text(cartItem.quantity
                                        .getOrCrash()
                                        .toString()),
                                Material(
                                  child: InkWell(
                                      onTap: () {
                                        context.read<CartItemBloc>().add(
                                            const CartItemEvent.decrement());
                                      },
                                      child: Icon(
                                        Icons.indeterminate_check_box_outlined,
                                        size: 40,
                                        color: Theme.of(context).primaryColor,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.chevron_left_outlined)
                        ],
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
