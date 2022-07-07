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
import 'package:shopify_presentation/shopify_presentation.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCartsBloc>(
      create: (context) =>
          getIt<UserCartsBloc>()..add(const UserCartsEvent.watchAllCarts()),
      child: BlocConsumer<UserCartsBloc, UserCartsState>(
        listener: (context, state) {},
        builder: (context, state) => RefreshIndicator(
          onRefresh: () async {
            context
                .read<UserCartsBloc>()
                .add(const UserCartsEvent.watchAllCarts());
          },
          child: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.userCartsOption.fold(
                  () => const CustomScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    slivers: [
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
                          child: NoCartsWidget(),
                        ),
                      )
                    ],
                  ),
                  (userCarts) => LoadingOverlay(
                    isLoading: state.isLoading,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Total sum: ${userCarts.totalSum.toStringAsFixed(2)} zł',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        const Divider(
                          height: 1,
                        ),
                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            children: userCarts.carts
                                .getOrCrash()
                                .iter
                                .map((cart) => cart.failureOrUnit.fold(
                                    (failure) => Container(),
                                    (_) => CartWidget(
                                          key: Key(cart.id.getOrCrash()),
                                          cart: cart,
                                        )))
                                .toList(),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          height: 60,
                          child: ShopifyPrimaryButton(
                              onPressed: () {
                                context
                                    .read<UserCartsBloc>()
                                    .add(const UserCartsEvent.createOrders());
                              },
                              text: 'Order'),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

class CartWidget extends StatefulWidget {
  const CartWidget({
    Key? key,
    required this.cart,
  }) : super(key: key);
  final Cart cart;

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slidable(
          key: Key(widget.cart.id.getOrCrash()),
          startActionPane: ActionPane(
            // A motion is a widget used to control how the pane animates.
            motion: const ScrollMotion(),

            // All actions are defined in the children parameter.
            children: [
              // A SlidableAction can have an icon and/or a label.
              SlidableAction(
                onPressed: (context) async {
                  isLoading = true;
                  setState(() {});

                  await getIt<ICartFacade>().deleteCart(widget.cart);
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
                backgroundColor: Theme.of(context).colorScheme.secondary,
                foregroundColor: Colors.white,
                icon: Icons.public,
                label: 'Nearby offers',
              ),
            ],
          ),
          child: Column(children: [
            SizedBox(
              height: 100,
              child: LoadingOverlay(
                  isLoading: isLoading,
                  child: ShopDetails(
                      key: Key(widget.cart.shop.id.getOrCrash()),
                      shop: widget.cart.shop)),
            ),
            CartDetailsWidget(
              cart: widget.cart,
            ),
          ]),
        ),
        const Divider(
          thickness: 2,
          height: 2,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class NoCartsWidget extends StatelessWidget {
  const NoCartsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.shopping_cart_outlined,
          size: 50,
        ),
        Text(
          'Your cart is empty',
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          'Start shopping now!',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
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
      padding: const EdgeInsets.symmetric(horizontal: 10),
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
        header: Padding(
          padding: const EdgeInsets.only(left: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
                '${cart.numOfItems.toString()} product${(cart.numOfItems != 1) ? 's' : ''}'),
            Text('Total: ${cart.totalCost.toStringAsFixed(2)} zł'),
          ]),
        ),
        expanded: Column(
          children: [
            ...cart.cartItems.getOrCrash().iter.map((cartItem) =>
                CartItemWidget(
                    key: Key(cartItem.id.getOrCrash()), cartItem: cartItem))
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
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  height: 30,
                                  width: 30,
                                  child: Center(
                                      child: state.isLoading
                                          ? const FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child:
                                                  CircularProgressIndicator())
                                          : Text(cartItem.quantity
                                              .getOrCrash()
                                              .toString())),
                                ),
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
                        ],
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
