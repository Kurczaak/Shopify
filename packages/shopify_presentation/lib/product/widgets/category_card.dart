import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key,
      required this.onTap,
      required this.pictureWidget,
      required this.categoryName})
      : super(key: key);
  final void Function() onTap;
  final Widget pictureWidget;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45, bottom: 20),
              child: pictureWidget,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(right: 20, bottom: 10),
              height: 30,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(5, 3), // changes position of shadow
                    ),
                  ]),
              width: double.maxFinite,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  categoryName,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
