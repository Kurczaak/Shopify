import 'package:flutter/material.dart';
import 'package:shopify_domain/product/nutrient.dart';
import 'package:shopify_manager/presentation/product/widgets/carbohydrates_form.dart';
import 'package:shopify_manager/presentation/product/widgets/fats_form.dart';
import 'package:shopify_manager/presentation/product/widgets/proteins_form.dart';

class NutrientFactsForm extends StatefulWidget {
  const NutrientFactsForm(
      {Key? key, this.facts, required this.onNutrientsChange})
      : super(key: key);
  final NutrientFacts? facts;
  final Function(NutrientFacts changedNutrients) onNutrientsChange;

  @override
  State<NutrientFactsForm> createState() => _NutrientFactsFormState();
}

class _NutrientFactsFormState extends State<NutrientFactsForm> {
  late NutrientFacts facts;
  @override
  void initState() {
    facts = widget.facts ?? NutrientFacts.empty();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Nutrition facts per 100 g',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Calories: ${facts.totalCalories}',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            FatsForm(
                fats: facts.fats,
                onFatsChanged: (fats) {
                  facts = facts.copyWith(fats: fats);
                  widget.onNutrientsChange(facts);
                  setState(() {});
                }),
            ProteinsForm(
                proteins: facts.proteins,
                onProteinsChanged: (proteins) {
                  facts = facts.copyWith(proteins: proteins);
                  widget.onNutrientsChange(facts);
                  setState(() {});
                }),
            CarbohydratesForm(
                carbohydrates: facts.carbohydrates,
                onCarbohydratesChanged: (carbs) {
                  facts = facts.copyWith(carbohydrates: carbs);
                  widget.onNutrientsChange(facts);
                  setState(() {});
                }),
          ],
        ),
      ],
    );
  }
}
