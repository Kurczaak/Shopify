import 'package:flutter/material.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

class CarbohydratesForm extends StatefulWidget {
  const CarbohydratesForm(
      {Key? key, this.carbohydrates, required this.onCarbohydratesChanged})
      : super(key: key);
  final Carbohydrates? carbohydrates;
  final Function(Carbohydrates changedCarbohydrates) onCarbohydratesChanged;

  @override
  State<CarbohydratesForm> createState() => _CarbohydratesFormState();
}

class _CarbohydratesFormState extends State<CarbohydratesForm> {
  late Carbohydrates carbohydrates;
  @override
  void initState() {
    carbohydrates = widget.carbohydrates ?? Carbohydrates.zero();
    final carbohydrateWeight =
        carbohydrates.carbohydrate.weight.weight.getOrCrash();
    final sugarWeight = carbohydrates.sugar.weight.weight.getOrCrash();

    if (carbohydrateWeight != 0) {
      _carbohydrateController.text = carbohydrateWeight.toString();
    }
    if (sugarWeight != 0) {
      _sugarController.text = sugarWeight.toString();
    }

    super.initState();
  }

  final _carbohydrateController = TextEditingController();
  final _sugarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Carbohydrates [g]',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              ShopifyTextFormField(
                controller: _carbohydrateController,
                keyboardType: TextInputType.number,
                fieldName: 'Total carbohydrates',
                onChanged: (String newValue) {
                  carbohydrates = carbohydrates.copyWith(
                    carbohydrate: Carbohydrate(
                      Weight.fromPrimitives(double.parse(newValue), 'gram'),
                    ),
                  );
                  widget.onCarbohydratesChanged(carbohydrates);
                },
              ),
              const SizedBox(height: 8),
              ShopifyTextFormField(
                controller: _sugarController,
                keyboardType: TextInputType.number,
                fieldName: 'Sugar',
                onChanged: (String newValue) {
                  carbohydrates = carbohydrates.copyWith(
                    sugar: Sugar(
                      Weight.fromPrimitives(double.parse(newValue), 'gram'),
                    ),
                  );
                  widget.onCarbohydratesChanged(carbohydrates);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
