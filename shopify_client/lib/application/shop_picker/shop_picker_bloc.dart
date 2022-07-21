import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_client/domain/shop/i_shop_repository.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/shop.dart';

part 'shop_picker_event.dart';
part 'shop_picker_state.dart';
part 'shop_picker_bloc.freezed.dart';
part 'shop_picker_bloc.sealed.dart';

@Injectable()
class ShopPickerBloc extends Bloc<ShopPickerEvent, ShopPickerState> {
  final IShopRepository shopRepository;
  final NetworkInfo networkInfo;
  ShopPickerBloc({required this.networkInfo, required this.shopRepository})
      : super(ShopPickerState.initial()) {
    on<ShopPickerEvent>((event, emit) async {
      await event.when(
        locationChanged: (Location location) {
          emit(state.copyWith(location: location));
          add(const ShopPickerEvent.watchNearbyShops());
        },
        radiusChanged: (double radius) {
          emit(state.copyWith(radius: radius));
          add(const ShopPickerEvent.watchNearbyShops());
        },
        watchNearbyShops: () async {
          if (await networkInfo.isConnected) {
            await emit.forEach(
                shopRepository.watchNearby(
                    state.location, NonnegativeNumber(state.radius)),
                onData: (Either<ShopFailure, KtList<Shop>> data) {
              return data.fold(
                  (failure) => ShopPickerState.shopFailure(state, failure),
                  (shops) => state.copyWith(
                        shops: shops,
                      ));
            });
          } else {
            emit(ShopPickerState.shopFailure(
                state, const ShopFailure.noInternetConnection()));
          }
        },
      );
    });
  }
}
