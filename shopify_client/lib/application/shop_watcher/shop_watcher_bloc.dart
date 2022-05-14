import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'shop_watcher_event.dart';
part 'shop_watcher_state.dart';
part 'shop_watcher_bloc.super.dart';

@injectable
class ShopWatcherBloc extends Bloc<ShopWatcherEvent, ShopWatcherState> {
  final IShopRepository _shopRepository;
  final ILocationFacade _locationFacade;
  //late StreamSubscription<Either<ShopFailure, KtList<Shop>>> streamSubscription;
  ShopWatcherBloc(this._shopRepository, this._locationFacade)
      : super(const ShopWatcherState.initial()) {
    on<ShopWatcherEvent>((event, emit) async {
      await event.when(
        watchShopsByLocation: (watchShopsByLocation) async {
          emit(const ShopWatcherState.loading());

          await emit.forEach(
              _shopRepository.watchNearby(watchShopsByLocation.location,
                  watchShopsByLocation.radius.toDouble()),
              onData: (Either<ShopFailure, KtList<Shop>> data) => data.fold(
                  (f) => ShopWatcherState.error(failure: f),
                  (shopList) => ShopWatcherState.loaded(
                      shops: shopList,
                      center: watchShopsByLocation.location,
                      radius: watchShopsByLocation.radius)));
        },
        watchNearbyShops: (watchNearbyShops) async {
          emit(const ShopWatcherState.loading());
          final locationOrFailure = await _locationFacade.getCurrentLocation();

          await locationOrFailure.fold(
            (f) async => emit(const ShopWatcherState.error(
                failure: ShopFailure.noShopFound())),
            (location) async => await emit.forEach(
              _shopRepository.watchNearby(
                  location, watchNearbyShops.radius.toDouble()),
              onData: (Either<ShopFailure, KtList<Shop>> data) => data.fold(
                  (f) => ShopWatcherState.error(failure: f),
                  (shopList) => ShopWatcherState.loaded(
                      shops: shopList,
                      center: location,
                      radius: watchNearbyShops.radius)),
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
