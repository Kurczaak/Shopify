import 'package:flutter/material.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

class FatsForm extends StatefulWidget {
  const FatsForm({Key? key, this.fats, required this.onFatsChanged})
      : super(key: key);
  final Fats? fats;
  final Function(Fats changedFats) onFatsChanged;

  @override
  State<FatsForm> createState() => _FatsFormState();
}

class _FatsFormState extends State<FatsForm> {
  late Fats fats;
  @override
  void initState() {
    fats = widget.fats ?? Fats.zero();
    final fatWeight = fats.fat.weight.weight.getOrCrash();
    final sFatWeight = fats.saturatedFat.weight.weight.getOrCrash();
    final tFatWeight = fats.transFat.weight.weight.getOrCrash();
    final msFatWeight = fats.monosaturatedFat.weight.weight.getOrCrash();
    final psFatWeight = fats.polysaturatedFat.weight.weight.getOrCrash();
    if (fatWeight != 0) {
      _fatController.text = fatWeight.toString();
    }
    if (sFatWeight != 0) {
      _sFatController.text = sFatWeight.toString();
    }
    if (tFatWeight != 0) {
      _tFatController.text = tFatWeight.toString();
    }
    if (msFatWeight != 0) {
      _msFatController.text = msFatWeight.toString();
    }
    if (psFatWeight != 0) {
      _psFatController.text = psFatWeight.toString();
    }
    super.initState();
  }

  final _fatController = TextEditingController();
  final _sFatController = TextEditingController();
  final _tFatController = TextEditingController();
  final _msFatController = TextEditingController();
  final _psFatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fats [g]',
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
                controller: _fatController,
                keyboardType: TextInputType.number,
                fieldName: 'Total fat',
                onChanged: (String newValue) {
                  fats = fats.copyWith(
                    fat: Fat(
                      Weight.fromPrimitives(double.parse(newValue), 'gram'),
                    ),
                  );
                  widget.onFatsChanged(fats);
                },
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: ShopifyTextFormField(
                      controller: _sFatController,
                      keyboardType: TextInputType.number,
                      fieldName: 'Saturated fats',
                      onChanged: (String newValue) {
                        fats = fats.copyWith(
                          saturatedFat: SaturatedFat(
                            Weight.fromPrimitives(
                                double.parse(newValue), 'gram'),
                          ),
                        );
                        widget.onFatsChanged(fats);
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ShopifyTextFormField(
                      controller: _tFatController,
                      keyboardType: TextInputType.number,
                      fieldName: 'Trans fats',
                      onChanged: (String newValue) {
                        fats = fats.copyWith(
                          transFat: TransFat(
                            Weight.fromPrimitives(
                                double.parse(newValue), 'gram'),
                          ),
                        );
                        widget.onFatsChanged(fats);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: ShopifyTextFormField(
                      controller: _msFatController,
                      keyboardType: TextInputType.number,
                      fieldName: 'Monosaturated',
                      onChanged: (String newValue) {
                        fats = fats.copyWith(
                          monosaturatedFat: MonosaturatedFat(
                            Weight.fromPrimitives(
                                double.parse(newValue), 'gram'),
                          ),
                        );
                        widget.onFatsChanged(fats);
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ShopifyTextFormField(
                      controller: _psFatController,
                      keyboardType: TextInputType.number,
                      fieldName: 'Polysaturated',
                      onChanged: (String newValue) {
                        fats = fats.copyWith(
                          polysaturatedFat: PolysaturatedFat(
                            Weight.fromPrimitives(
                                double.parse(newValue), 'gram'),
                          ),
                        );
                        widget.onFatsChanged(fats);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
