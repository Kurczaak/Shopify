part of 'best_product_offer_watcher_bloc.dart';

@Sealed()
abstract class _BestProductOfferWatcherEvent {
  void watchBestOffers(
      UniqueId productId, Location location, NonnegativeNumber radius);
}
