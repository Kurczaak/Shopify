import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'shopping_actor_event.dart';
part 'shopping_actor_state.dart';

class ShoppingActorBloc extends Bloc<ShoppingActorEvent, ShoppingActorState> {
  ShoppingActorBloc() : super(ShoppingActorInitial()) {
    on<ShoppingActorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
