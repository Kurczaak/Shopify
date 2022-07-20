import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_client/domain/favourites/favourites_facade.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/favourites/favourite_failure.dart';

part 'favourites_actor_event.dart';
part 'favourites_actor_state.dart';
part 'favourites_actor_bloc.freezed.dart';
part 'favourites_actor_bloc.sealed.dart';

@Injectable()
class FavouritesActorBloc
    extends Bloc<FavouritesActorEvent, FavouritesActorState> {
  final IFavouritesFacade favouritesFacade;
  FavouritesActorBloc(this.favouritesFacade)
      : super(FavouritesActorState.initial()) {
    on<FavouritesActorEvent>((event, emit) async {
      await event.when(initialize: (UniqueId productId) async {
        final isFavOrFailure = await favouritesFacade.isFavourite(productId);
        isFavOrFailure.fold(
            (failure) =>
                emit(state.copyWith(favouriteFailureOption: some(failure))),
            (isFavourite) => emit(state.copyWith(
                favouriteFailureOption: none(),
                isFavouirte: some(isFavourite))));
      }, toggleFavourite: (UniqueId productId) async {
        emit(state.copyWith(favouriteFailureOption: none()));
        await state.isFavouirte.fold(() async {
          final isFavOrFailure = await favouritesFacade.isFavourite(productId);
          await isFavOrFailure.fold(
              (failure) async =>
                  emit(state.copyWith(favouriteFailureOption: some(failure))),
              (isFavourite) async {
            late Either<FavouriteFailure, Unit> callResult;
            emit(state.copyWith(isFavouirte: some(!isFavourite)));
            if (isFavourite) {
              callResult =
                  await favouritesFacade.removeFromFavourites(productId);
            } else {
              callResult = await favouritesFacade.addToFavourites(productId);
            }
            callResult.fold((failure) {
              failure.maybeWhen(
                orElse: () => emit(state.copyWith(
                    isFavouirte: some(isFavourite),
                    favouriteFailureOption: some(failure))),
                alreadyInFavoruites: () {
                  emit(state.copyWith(favouriteFailureOption: some(failure)));
                },
                notInFavourites: () {
                  emit(state.copyWith(favouriteFailureOption: some(failure)));
                },
              );
            }, (_) => null);
          });
        }, (isFavourite) async {
          late Either<FavouriteFailure, Unit> callResult;
          emit(state.copyWith(isFavouirte: some(!isFavourite)));
          if (isFavourite) {
            callResult = await favouritesFacade.removeFromFavourites(productId);
          } else {
            callResult = await favouritesFacade.addToFavourites(productId);
          }
          callResult.fold((failure) {
            failure.maybeWhen(
              orElse: () => emit(state.copyWith(
                  isFavouirte: some(isFavourite),
                  favouriteFailureOption: some(failure))),
              alreadyInFavoruites: () {
                emit(state.copyWith(favouriteFailureOption: some(failure)));
              },
              notInFavourites: () {
                emit(state.copyWith(favouriteFailureOption: some(failure)));
              },
            );
          }, (_) => null);
        });
      });
    });
  }
}
