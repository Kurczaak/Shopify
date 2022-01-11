import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'shopping_watcher_event.dart';
part 'shopping_watcher_state.dart';

class ShoppingWatcherBloc extends Bloc<ShoppingWatcherEvent, ShoppingWatcherState> {
  ShoppingWatcherBloc() : super(ShoppingWatcherInitial()) {
    on<ShoppingWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
