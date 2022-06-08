import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';
import 'package:shopify_domain/shop.dart';

part 'shop_watcher_event.dart';
part 'shop_watcher_state.dart';
part 'shop_watcher_bloc.freezed.dart';

@injectable
class ShoppingWatcherBloc
    extends Bloc<ShoppingWatcherEvent, ShoppingWatcherState> {
  final IShopRepository _shopRepository;

  ShoppingWatcherBloc(this._shopRepository)
      : super(const ShoppingWatcherState.initial()) {
    on<ShoppingWatcherEvent>((event, emit) {
      event.map(
        watchAll: (e) async* {
          emit(const ShoppingWatcherState.loadInProgress());
          yield* _shopRepository.watchAll().map(
                (failureOrShops) => failureOrShops.fold(
                  (f) => ShoppingWatcherState.loadFailure(f),
                  (shops) => ShoppingWatcherState.loadSuccess(shops),
                ),
              );
        },
      );
    });
  }
}
