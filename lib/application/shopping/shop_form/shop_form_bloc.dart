import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'shop_form_event.dart';
part 'shop_form_state.dart';

class ShopFormBloc extends Bloc<ShopFormEvent, ShopFormState> {
  ShopFormBloc() : super(ShopFormInitial()) {
    on<ShopFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
