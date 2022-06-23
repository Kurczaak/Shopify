import 'package:flutter/material.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_presentation/product/widgets/category_card.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView(
      {Key? key, required this.onTap, required this.onAllProductsTap})
      : super(key: key);
  final void Function(int index) onTap;
  final void Function() onAllProductsTap;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.only(top: 60),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 8),
        itemCount: Categories.values.length + 1,
        itemBuilder: (BuildContext context, index) {
          if (index == 0) {
            return CategoryCard(
                categoryName: 'All products',
                onTap: onAllProductsTap,
                pictureWidget: Image.asset('images/categories/store.png'));
          } else {
            index--;
            return CategoryCard(
              categoryName: Categories.values[index].stringifiedName,
              onTap: () => onTap(index),
              pictureWidget: Image.asset(
                  'images/categories/${Categories.values[index].name}.png'),
            );
          }
        });
  }
}
