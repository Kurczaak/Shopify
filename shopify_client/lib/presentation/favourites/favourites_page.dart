import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/favourites_watcher/favourites_watcher_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/favourites/favourite_product.dart';
import 'package:shopify_presentation/core/shopify_image.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavouritesWatcherBloc>(
      create: (context) => getIt<FavouritesWatcherBloc>()
        ..add(
          const FavouritesWatcherEvent.watchFavourites(),
        ),
      child: BlocConsumer<FavouritesWatcherBloc, FavouritesWatcherState>(
          listener: (context, state) {},
          builder: (context, state) => RefreshIndicator(
                onRefresh: () async => context
                    .read<FavouritesWatcherBloc>()
                    .add(const FavouritesWatcherEvent.watchFavourites()),
                child: state.favourites.size == 0
                    ? const CustomScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        slivers: [
                          SliverFillRemaining(
                            hasScrollBody: false,
                            child: Center(
                              child: NoFavouritesWidget(),
                            ),
                          )
                        ],
                      )
                    : GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemCount: state.favourites.size,
                        itemBuilder: (context, index) {
                          final item = state.favourites.get(index);
                          return ProductPreviewWidget(
                            product: item,
                          );
                        }),
              )),
    );
  }
}

class NoFavouritesWidget extends StatelessWidget {
  const NoFavouritesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.favorite_border_outlined,
          size: 50,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          'You have no favourite items',
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}

class ProductPreviewWidget extends StatelessWidget {
  const ProductPreviewWidget({Key? key, required this.product})
      : super(key: key);

  final FavouriteProduct product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 5,
            child: ShopifyNetworkImage(product.photoUrl.getOrCrash(),
                fit: BoxFit.cover, height: 80, width: 120),
          ),
          const SizedBox(height: 5),
          Flexible(
            fit: FlexFit.tight,
            flex: 3,
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ProductSnippetInfoWidget(product: product),
                  ),
                ),
                const Flexible(
                  fit: FlexFit.tight,
                  flex: 3,
                  child: Icon(Icons.favorite),
                ),
              ],
            ),
          )
        ],
      ),
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
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              brand,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          weight,
          style: const TextStyle(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

class ProductSnippetInfoWidget extends StatelessWidget {
  const ProductSnippetInfoWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final FavouriteProduct product;

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
                child:
                    ProductNameWidget(name: product.productName.getOrCrash()),
              ),
              Expanded(
                child: BrandAndWeightRow(
                    brand: product.brand.getOrCrash(),
                    weight: product.weight.stringifyOrCrash),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
