import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'shop_registration_event.dart';
part 'shop_registration_state.dart';

class ShopRegistrationBloc extends Bloc<ShopRegistrationEvent, ShopRegistrationState> {
  ShopRegistrationBloc() : super(ShopRegistrationInitial()) {
    on<ShopRegistrationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
