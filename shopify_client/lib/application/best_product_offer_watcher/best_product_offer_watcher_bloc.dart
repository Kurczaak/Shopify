import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_client/domain/best_offers/i_best_offers_facade.dart';
import 'package:shopify_domain/best_offers/best_offer.dart';
import 'package:shopify_domain/best_offers/best_offer_failure.dart';

import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_product_offer_watcher_event.dart';
part 'best_product_offer_watcher_state.dart';
part 'best_product_offer_watcher_bloc.freezed.dart';
part 'best_product_offer_watcher_bloc.sealed.dart';

@Injectable()
class BestProductOfferWatcherBloc
    extends Bloc<BestProductOfferWatcherEvent, BestProductOfferWatcherState> {
  final IBestOffersFacade facade;
  BestProductOfferWatcherBloc(this.facade)
      : super(BestProductOfferWatcherState.initial()) {
    on<BestProductOfferWatcherEvent>((event, emit) async {
      await event.when(watchBestOffers: ((productId, location, radius) async {
        emit(BestProductOfferWatcherState.initial().copyWith(isLoading: true));
        await emit.forEach(
            facade.bestWithinDistance(
                productId: productId, location: location, distance: radius),
            onData: (Either<BestOfferFailure, KtList<BestOffer>> data) {
          return data.fold(
              (failure) => state.copyWith(
                  isLoading: false, failureOption: some(failure)),
              (offers) => state.copyWith(isLoading: false, bestOffers: offers));
        });
      }));
    });
  }
}
