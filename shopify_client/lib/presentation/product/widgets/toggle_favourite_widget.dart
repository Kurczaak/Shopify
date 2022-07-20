import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/core/value_objects.dart';

import '../../../application/favouirtes_actor/favourites_actor_bloc.dart';

class ToggleFavouriteWidget extends StatelessWidget {
  final UniqueId productId;
  const ToggleFavouriteWidget({Key? key, required this.productId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavouritesActorBloc>(
      create: (context) => getIt<FavouritesActorBloc>()
        ..add(FavouritesActorEvent.initialize(productId: productId)),
      child: BlocConsumer<FavouritesActorBloc, FavouritesActorState>(
          builder: (context, state) => InkWell(
                onTap: () {
                  context.read<FavouritesActorBloc>().add(
                      FavouritesActorEvent.toggleFavourite(
                          productId: productId));
                },
                child: Icon(
                  state.isFavouirte.fold(
                    () => Icons.favorite_border,
                    (isFavourite) =>
                        isFavourite ? Icons.favorite : Icons.favorite_border,
                  ),
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
          listener: (context, state) {
            state.favouriteFailureOption.fold(
                () => null,
                (failure) => FlushbarHelper.createError(
                      message: failure.map(
                          alreadyInFavoruites: (_) =>
                              'Product already in favourites!',
                          indalidProduct: (_) => 'Invalid product!',
                          notInFavourites: (_) =>
                              'Product is not in favourites.',
                          insufficientPermission: (_) =>
                              'Insufficient permission',
                          noInternetConnection: (_) => 'No internet connection',
                          timeout: (_) => 'Connection timed out',
                          unexpected: (_) => 'An unexpected error has occured'),
                    ).show(context));
          }),
    );
  }
}
