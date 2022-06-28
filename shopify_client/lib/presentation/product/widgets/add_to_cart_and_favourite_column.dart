import 'package:flutter/material.dart';

class AddToCartAndFavouriteColumn extends StatelessWidget {
  const AddToCartAndFavouriteColumn({
    Key? key,
    this.onTapFavourite,
    this.onTapAddToCart,
    this.onLongPressAddToCart,
  }) : super(key: key);
  final void Function(bool isFavourite)? onTapFavourite;
  final void Function()? onTapAddToCart;
  final void Function()? onLongPressAddToCart;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: InkWell(
              onTap: onTapAddToCart,
              onLongPress: onLongPressAddToCart,
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
              onTap: () => onTapFavourite,
              child: Icon(
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
