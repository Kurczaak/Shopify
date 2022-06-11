import 'package:flutter/material.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

class ProteinsForm extends StatefulWidget {
  const ProteinsForm({Key? key, this.proteins, required this.onProteinsChanged})
      : super(key: key);
  final Proteins? proteins;
  final Function(Proteins changedProteins) onProteinsChanged;

  @override
  State<ProteinsForm> createState() => _ProteinsFormState();
}

class _ProteinsFormState extends State<ProteinsForm> {
  late Proteins proteins;
  @override
  void initState() {
    proteins = widget.proteins ?? Proteins.zero();
    final proteinWeight = proteins.protein.weight.weight.getOrCrash();
    final animalProteinWeight =
        proteins.animalProtein.weight.weight.getOrCrash();
    final plantProteinWeight = proteins.plantProtein.weight.weight.getOrCrash();

    if (proteinWeight != 0) {
      _proteinController.text = proteinWeight.toString();
    }
    if (animalProteinWeight != 0) {
      _animalProteinController.text = animalProteinWeight.toString();
    }
    if (plantProteinWeight != 0) {
      _plantProteinController.text = plantProteinWeight.toString();
    }

    super.initState();
  }

  final _proteinController = TextEditingController();
  final _plantProteinController = TextEditingController();
  final _animalProteinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Proteins [g]',
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
                controller: _proteinController,
                keyboardType: TextInputType.number,
                fieldName: 'Total proteins',
                onChanged: (String newValue) {
                  proteins = proteins.copyWith(
                    protein: Protein(
                      Weight.fromPrimitives(double.parse(newValue), 'gram'),
                    ),
                  );
                  widget.onProteinsChanged(proteins);
                },
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: ShopifyTextFormField(
                      controller: _plantProteinController,
                      keyboardType: TextInputType.number,
                      fieldName: 'Plant proteins',
                      onChanged: (String newValue) {
                        proteins = proteins.copyWith(
                          plantProtein: PlantProtein(
                            Weight.fromPrimitives(
                                double.parse(newValue), 'gram'),
                          ),
                        );
                        widget.onProteinsChanged(proteins);
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ShopifyTextFormField(
                      controller: _animalProteinController,
                      keyboardType: TextInputType.number,
                      fieldName: 'Animal proteins',
                      onChanged: (String newValue) {
                        proteins = proteins.copyWith(
                          animalProtein: AnimalProtein(
                            Weight.fromPrimitives(
                                double.parse(newValue), 'gram'),
                          ),
                        );
                        widget.onProteinsChanged(proteins);
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
