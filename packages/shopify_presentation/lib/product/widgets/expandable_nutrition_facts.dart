import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/product.dart';

class ExpandableNutritionFacts extends StatelessWidget {
  const ExpandableNutritionFacts({Key? key, required this.nutrientFacts})
      : super(key: key);
  final NutrientFacts nutrientFacts;
  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      header: const Text(
        'Nutrition Facts per 100 g',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      collapsed: Text(
        'Energy: ${nutrientFacts.totalCalories} kcal',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      expanded: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(width: double.maxFinite),
          Container(
            child: Text(
              'Energy: ${nutrientFacts.totalCalories} kcal',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            color: Theme.of(context).colorScheme.primary.withOpacity(.5),
          ),
          NutrientsGroupWidget(
            nutrientFacts.fats,
            color: Theme.of(context).colorScheme.secondary,
          ),
          NutrientsGroupWidget(
            nutrientFacts.carbohydrates,
            color: Theme.of(context).colorScheme.primary,
          ),
          NutrientsGroupWidget(
            nutrientFacts.proteins,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}

class NutritionFactRow extends StatelessWidget {
  const NutritionFactRow(this.nutrient,
      {Key? key,
      required this.color,
      required this.opacity,
      this.isMain = false})
      : super(key: key);
  final Nutrient nutrient;
  final Color color;
  final double opacity;
  final bool isMain;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color.withOpacity(opacity),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(nutrient.name.getOrCrash(),
              style: TextStyle(
                  fontWeight: isMain ? FontWeight.bold : FontWeight.normal)),
          Text(nutrient.weight.stringifyOrCrash,
              style: TextStyle(
                  fontWeight: isMain ? FontWeight.bold : FontWeight.normal))
        ],
      ),
    );
  }
}

class NutrientsGroupWidget extends StatelessWidget {
  const NutrientsGroupWidget(this.group, {Key? key, required this.color})
      : super(key: key);
  final NutrientsGroup group;
  final Color color;

  List<Widget> generateSubNturients(KtList<Nutrient> subNutrients) {
    final List<Widget> widgets = [];
    int i = 0;
    for (final subNutrient in subNutrients.iter) {
      final widget = NutritionFactRow(
        subNutrient,
        color: color,
        opacity: i % 2 == 0 ? .4 : .5,
      );
      widgets.add(widget);
      i++;
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NutritionFactRow(
          group.mainNutrient,
          color: color,
          opacity: .5,
          isMain: true,
        ),
        ...generateSubNturients(group.subNutrients)
      ],
    );
  }
}
