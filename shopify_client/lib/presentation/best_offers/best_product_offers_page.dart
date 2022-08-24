import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/best_product_offer_watcher/best_product_offer_watcher_bloc.dart';
import 'package:shopify_client/domain/product/i_product_repository.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/routes/router.gr.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_presentation/core/shopify_image.dart';

import '../../application/location/location_bloc.dart';

class BestProductOffersPage extends StatelessWidget {
  final UniqueId productId;

  const BestProductOffersPage({Key? key, required this.productId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<BestProductOfferWatcherBloc>(
        create: (BuildContext context) => getIt<BestProductOfferWatcherBloc>()
          ..add(BestProductOfferWatcherEvent.watchBestOffers(
              productId: productId,
              location: getIt<LocationBloc>().state.location,
              radius: NonnegativeNumber(getIt<LocationBloc>().state.radius))),
        child: BlocConsumer<BestProductOfferWatcherBloc,
            BestProductOfferWatcherState>(
          listener: (_, __) {},
          builder: (context, state) =>
              BlocListener<LocationBloc, LocationState>(
            listenWhen: ((previous, current) {
              if (previous.location != current.location ||
                  previous.radius != current.radius) {
                context.read<BestProductOfferWatcherBloc>().add(
                    BestProductOfferWatcherEvent.watchBestOffers(
                        productId: productId,
                        location: current.location,
                        radius: NonnegativeNumber(current.radius)));
                return true;
              }
              return false;
            }),
            listener: (context, state) {},
            child: GridView.builder(
              itemCount: state.bestOffers.size,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                final bestOffer = state.bestOffers.get(index);
                final shop = bestOffer.shop;
                final distanceInKm =
                    bestOffer.distance.getOrCrash().toStringAsFixed(1);
                final price = bestOffer.price.price.getOrCrash().toString();
                return InkWell(
                  onTap: () async {
                    final pricedProductOrFailure =
                        await getIt<IProductRepository>()
                            .getPricedProductById(productId, bestOffer.shop.id);

                    pricedProductOrFailure.fold(
                        (failure) => null,
                        (product) => context.router.push(ProductPreviewRoute(
                            product: product,
                            shop: shop,
                            title: shop.shopName.getOrCrash())));
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                            height: 100,
                            child:
                                ShopifyNetworkImage(shop.logoUrl.getOrCrash())),
                        Text(shop.shopName.getOrCrash()),
                        Text("$distanceInKm km"),
                        Text("$price zł")
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
