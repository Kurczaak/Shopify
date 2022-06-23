import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:shopify_domain/product.dart';

class ExpandableDescription extends StatelessWidget {
  const ExpandableDescription(
      {Key? key,
      required this.description,
      required this.title,
      this.bottomPadding = 0})
      : super(key: key);
  final ProductDescription description;
  final String title;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return description.getOrCrash().isEmpty
        ? Container()
        : Padding(
            padding: EdgeInsets.only(bottom: bottomPadding),
            child: ExpandablePanel(
              header: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              collapsed: Text(
                description.getOrCrash(),
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.normal),
              ),
              expanded: Text(
                description.getOrCrash(),
                style: const TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
          );
  }
}
