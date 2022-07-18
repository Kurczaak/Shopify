import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_client/domain/favourites/favourites_facade.dart';
import 'package:shopify_domain/favourites/favourite_failure.dart';
import 'package:shopify_domain/favourites/favourite_product.dart';

part 'favourites_watcher_event.dart';
part 'favourites_watcher_state.dart';
part 'favourites_watcher_bloc.freezed.dart';
part 'favourites_watcher_bloc.sealed.dart';

@Injectable()
class FavouritesWatcherBloc
    extends Bloc<FavouritesWatcherEvent, FavouritesWatcherState> {
  final IFavouritesFacade favouritesFacade;
  FavouritesWatcherBloc(this.favouritesFacade)
      : super(FavouritesWatcherState.initial()) {
    on<FavouritesWatcherEvent>((event, emit) async {
      await event.when(watchFavourites: () async {
        emit(state.copyWith(isLoading: true, failureOption: none()));
        await emit.forEach(favouritesFacade.watchFavourites(), onData:
            (Either<FavouriteFailure, KtList<FavouriteProduct>>
                productsOrFailure) {
          return productsOrFailure.fold(
              (failure) => state.copyWith(
                  isLoading: false, failureOption: some(failure)),
              (products) => state.copyWith(
                  isLoading: false,
                  favourites: products,
                  failureOption: none()));
        });
      });
    });
  }
}
