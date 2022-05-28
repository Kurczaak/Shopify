import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';

part 'shop_actor_event.dart';
part 'shop_actor_state.dart';
part 'shop_actor_bloc.freezed.dart';

@injectable
class ShoppingActorBloc extends Bloc<ShoppingActorEvent, ShoppingActorState> {
  final IShopRepository _shopRepository;
  ShoppingActorBloc(this._shopRepository)
      : super(const ShoppingActorState.inital()) {
    on<ShoppingActorEvent>((event, emit) async {
      emit(const ShoppingActorState.actionInProgress());
      final possibleFailure = await _shopRepository.delete(event.shop);
      possibleFailure.fold(
        (f) => emit(ShoppingActorState.deleteFailure(f)),
        (r) => emit(
          const ShoppingActorState.deleteSuccess(),
        ),
      );
      emit(const ShoppingActorState.actionInProgress());
    });
  }
}
