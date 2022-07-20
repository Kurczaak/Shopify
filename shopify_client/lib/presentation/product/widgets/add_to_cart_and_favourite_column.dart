import 'package:flutter/material.dart';
import 'package:shopify_client/application/cart_and_favourite/cart_and_favourite_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/product/widgets/add_to_cart_widget.dart';
import 'package:shopify_client/presentation/product/widgets/toggle_favourite_widget.dart';
import 'package:shopify_domain/product/product_snippets.dart';

class AddToCartAndFavouriteColumn extends StatelessWidget {
  const AddToCartAndFavouriteColumn(
    this.product, {
    Key? key,
  }) : super(key: key);
  final PricedProduct product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: getIt<CartActorBloc>().state.isLoading
                ? const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Center(child: CircularProgressIndicator()),
                  )
                : AddToCartWidget(pricedProduct: product),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: FittedBox(
              fit: BoxFit.contain,
              child: ToggleFavouriteWidget(
                productId: product.productId,
              )),
        )
      ],
    );
  }
}
