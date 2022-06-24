import 'package:flutter/material.dart';
import 'package:shopify_domain/product.dart';

class ProductSnippetInfoWidget extends StatelessWidget {
  const ProductSnippetInfoWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final PricedProduct product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ProductNameWidget(name: product.name.getOrCrash()),
              ),
              Expanded(
                child: BrandAndWeightRow(
                    brand: product.brand.getOrCrash(),
                    weight: product.weight.stringifyOrCrash),
              ),
            ],
          ),
        ),
        Expanded(
          child: PriceWidget(price: product.price.price.getOrCrash()),
        )
      ],
    );
  }
}

class ProductNameWidget extends StatelessWidget {
  const ProductNameWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        name,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class BrandAndWeightRow extends StatelessWidget {
  const BrandAndWeightRow({
    Key? key,
    required this.brand,
    required this.weight,
  }) : super(key: key);

  final String brand;
  final String weight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          brand,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          weight,
          style: const TextStyle(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key,
    required this.price,
  }) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        price.toStringAsFixed(2) + ' zł',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
