part of 'best_product_offer_watcher_bloc.dart';

@freezed
class BestProductOfferWatcherState with _$BestProductOfferWatcherState {
  const factory BestProductOfferWatcherState({
    required KtList<BestOffer> bestOffers,
    required bool isLoading,
    required Option<BestOfferFailure> failureOption,
  }) = _BestProductOfferWatcherState;

  factory BestProductOfferWatcherState.initial() =>
      BestProductOfferWatcherState(
          bestOffers: const KtList.empty(),
          isLoading: false,
          failureOption: none());
}
