import 'package:flutter/material.dart';

class AddToCartAndFavouriteColumn extends StatelessWidget {
  const AddToCartAndFavouriteColumn({
    Key? key,
    this.onTapFavourite,
    this.onTapAddToCart,
  }) : super(key: key);
  final void Function(bool isFavourite)? onTapFavourite;
  final void Function()? onTapAddToCart;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
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
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ),
        )
      ],
    );
  }
}
