// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_product_offer_watcher_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [BestProductOfferWatcherEvent] {
///
/// ([BestProductOfferWatcherEventWatchBestOffers] watchBestOffers){[UniqueId] productId, [Location] location, [NonnegativeNumber] radius} with data equality
///
/// }
@SealedManifest(_BestProductOfferWatcherEvent)
abstract class BestProductOfferWatcherEvent {
  const BestProductOfferWatcherEvent._internal();

  const factory BestProductOfferWatcherEvent.watchBestOffers({
    required UniqueId productId,
    required Location location,
    required NonnegativeNumber radius,
  }) = BestProductOfferWatcherEventWatchBestOffers;

  bool get isWatchBestOffers =>
      this is BestProductOfferWatcherEventWatchBestOffers;

  BestProductOfferWatcherEventWatchBestOffers get asWatchBestOffers =>
      this as BestProductOfferWatcherEventWatchBestOffers;

  BestProductOfferWatcherEventWatchBestOffers? get asWatchBestOffersOrNull {
    final bestProductOfferWatcherEvent = this;
    return bestProductOfferWatcherEvent
            is BestProductOfferWatcherEventWatchBestOffers
        ? bestProductOfferWatcherEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(
            UniqueId productId, Location location, NonnegativeNumber radius)
        watchBestOffers,
  }) {
    final bestProductOfferWatcherEvent = this;
    if (bestProductOfferWatcherEvent
        is BestProductOfferWatcherEventWatchBestOffers) {
      return watchBestOffers(
          bestProductOfferWatcherEvent.productId,
          bestProductOfferWatcherEvent.location,
          bestProductOfferWatcherEvent.radius);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(UniqueId productId, Location location, NonnegativeNumber radius)?
        watchBestOffers,
    required R Function(
            BestProductOfferWatcherEvent bestProductOfferWatcherEvent)
        orElse,
  }) {
    final bestProductOfferWatcherEvent = this;
    if (bestProductOfferWatcherEvent
        is BestProductOfferWatcherEventWatchBestOffers) {
      return watchBestOffers != null
          ? watchBestOffers(
              bestProductOfferWatcherEvent.productId,
              bestProductOfferWatcherEvent.location,
              bestProductOfferWatcherEvent.radius)
          : orElse(bestProductOfferWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(
            UniqueId productId, Location location, NonnegativeNumber radius)?
        watchBestOffers,
    void Function(BestProductOfferWatcherEvent bestProductOfferWatcherEvent)?
        orElse,
  }) {
    final bestProductOfferWatcherEvent = this;
    if (bestProductOfferWatcherEvent
        is BestProductOfferWatcherEventWatchBestOffers) {
      if (watchBestOffers != null) {
        watchBestOffers(
            bestProductOfferWatcherEvent.productId,
            bestProductOfferWatcherEvent.location,
            bestProductOfferWatcherEvent.radius);
      } else if (orElse != null) {
        orElse(bestProductOfferWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(UniqueId productId, Location location, NonnegativeNumber radius)?
        watchBestOffers,
    R Function(BestProductOfferWatcherEvent bestProductOfferWatcherEvent)?
        orElse,
  }) {
    final bestProductOfferWatcherEvent = this;
    if (bestProductOfferWatcherEvent
        is BestProductOfferWatcherEventWatchBestOffers) {
      return watchBestOffers != null
          ? watchBestOffers(
              bestProductOfferWatcherEvent.productId,
              bestProductOfferWatcherEvent.location,
              bestProductOfferWatcherEvent.radius)
          : orElse?.call(bestProductOfferWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(
            BestProductOfferWatcherEventWatchBestOffers watchBestOffers)
        watchBestOffers,
  }) {
    final bestProductOfferWatcherEvent = this;
    if (bestProductOfferWatcherEvent
        is BestProductOfferWatcherEventWatchBestOffers) {
      return watchBestOffers(bestProductOfferWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(BestProductOfferWatcherEventWatchBestOffers watchBestOffers)?
        watchBestOffers,
    required R Function(
            BestProductOfferWatcherEvent bestProductOfferWatcherEvent)
        orElse,
  }) {
    final bestProductOfferWatcherEvent = this;
    if (bestProductOfferWatcherEvent
        is BestProductOfferWatcherEventWatchBestOffers) {
      return watchBestOffers != null
          ? watchBestOffers(bestProductOfferWatcherEvent)
          : orElse(bestProductOfferWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(BestProductOfferWatcherEventWatchBestOffers watchBestOffers)?
        watchBestOffers,
    void Function(BestProductOfferWatcherEvent bestProductOfferWatcherEvent)?
        orElse,
  }) {
    final bestProductOfferWatcherEvent = this;
    if (bestProductOfferWatcherEvent
        is BestProductOfferWatcherEventWatchBestOffers) {
      if (watchBestOffers != null) {
        watchBestOffers(bestProductOfferWatcherEvent);
      } else if (orElse != null) {
        orElse(bestProductOfferWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(BestProductOfferWatcherEventWatchBestOffers watchBestOffers)?
        watchBestOffers,
    R Function(BestProductOfferWatcherEvent bestProductOfferWatcherEvent)?
        orElse,
  }) {
    final bestProductOfferWatcherEvent = this;
    if (bestProductOfferWatcherEvent
        is BestProductOfferWatcherEventWatchBestOffers) {
      return watchBestOffers != null
          ? watchBestOffers(bestProductOfferWatcherEvent)
          : orElse?.call(bestProductOfferWatcherEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([BestProductOfferWatcherEventWatchBestOffers] : [BestProductOfferWatcherEvent]) watchBestOffers){[UniqueId] productId, [Location] location, [NonnegativeNumber] radius}
///
/// with data equality
class BestProductOfferWatcherEventWatchBestOffers
    extends BestProductOfferWatcherEvent with EquatableMixin {
  const BestProductOfferWatcherEventWatchBestOffers({
    required this.productId,
    required this.location,
    required this.radius,
  }) : super._internal();

  final UniqueId productId;
  final Location location;
  final NonnegativeNumber radius;

  @override
  String toString() =>
      'BestProductOfferWatcherEvent.watchBestOffers(productId: $productId, location: $location, radius: $radius)';

  @override
  List<Object?> get props => [
        productId,
        location,
        radius,
      ];
}
