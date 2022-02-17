import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'shop_logo_picker_event.dart';
part 'shop_logo_picker_state.dart';

class ShopLogoPickerBloc extends Bloc<ShopLogoPickerEvent, ShopLogoPickerState> {
  ShopLogoPickerBloc() : super(ShopLogoPickerInitial()) {
    on<ShopLogoPickerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
