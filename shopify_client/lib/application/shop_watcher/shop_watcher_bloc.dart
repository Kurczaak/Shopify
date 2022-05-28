import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:shopify_client/domain/core/i_location_facade.dart';
import 'package:shopify_client/domain/shop/i_shop_repository.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop.dart';
import 'package:sealed_annotations/sealed_annotations.dart';

part 'shop_watcher_bloc.sealed.dart';
part 'shop_watcher_event.dart';
part 'shop_watcher_state.dart';

@injectable
class ShopWatcherBloc extends Bloc<ShopWatcherEvent, ShopWatcherState> {
  final IShopRepository _shopRepository;
  final ILocationFacade _locationFacade;
  //late StreamSubscription<Either<ShopFailure, KtList<Shop>>> streamSubscription;
  ShopWatcherBloc(this._shopRepository, this._locationFacade)
      : super(const ShopWatcherState.initial()) {
    on<ShopWatcherEvent>((event, emit) async {
      await event.when(
        watchShopsByLocation: (radius, location) async {
          emit(const ShopWatcherState.loading());

          await emit.forEach(
              _shopRepository.watchNearby(location, radius.toDouble()),
              onData: (Either<ShopFailure, KtList<Shop>> data) => data.fold(
                  (f) => ShopWatcherState.error(failure: f),
                  (shopList) => ShopWatcherState.loaded(
                      shops: shopList, location: location, radius: radius)));
        },
        watchNearbyShops: (double radius) async {
          emit(const ShopWatcherState.loading());
          final locationOrFailure = await _locationFacade.getCurrentLocation();

          await locationOrFailure.fold(
            (f) async {
              emit(ShopWatcherState.error(
                  failure: f.map(
                      unexpected: (_) => const ShopFailure.unexpected(),
                      noLocationFound: (_) => const ShopFailure.noShopFound(),
                      timeout: (_) =>
                          const ShopFailure.timeout(timeoutDuration),
                      permissionDenied: (_) =>
                          const ShopFailure.locationPermissionDenied())));
            },
            (location) async => await emit.forEach(
              _shopRepository.watchNearby(location, radius),
              onData: (Either<ShopFailure, KtList<Shop>> data) => data.fold(
                  (f) => ShopWatcherState.error(failure: f),
                  (shopList) => ShopWatcherState.loaded(
                      shops: shopList, location: location, radius: radius)),
            ),
          );
        },
      );
    });
  }

  @override
  Future<void> close() {
    // streamSubscription.cancel();
    return super.close();
  }
}
