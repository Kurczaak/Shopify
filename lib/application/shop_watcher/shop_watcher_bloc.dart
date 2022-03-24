import 'package:bloc/bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:shopify_client/domain/core/location.dart';
import 'package:shopify_client/domain/shopping/shop.dart';
import 'package:shopify_client/domain/shopping/shop_failure.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'shop_watcher_event.dart';
part 'shop_watcher_state.dart';
part 'shop_watcher_bloc.super.dart';

class ShopGeoBloc extends Bloc<ShopWatcherEvent, ShopWatcherState> {
  ShopGeoBloc() : super(const ShopWatcherState.initial()) {
    on<ShopWatcherEvent>((event, emit) {
      event.when(
        watchNearbyShops: (watchNearbyShops) {},
      );
    });
  }
}
