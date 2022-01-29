import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/shopping/i_shop_repository.dart';
import 'package:shopify_manager/domain/shopping/shop.dart';
import 'package:shopify_manager/domain/shopping/shop_failure.dart';

part 'shopping_actor_event.dart';
part 'shopping_actor_state.dart';
part 'shopping_actor_bloc.freezed.dart';

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
