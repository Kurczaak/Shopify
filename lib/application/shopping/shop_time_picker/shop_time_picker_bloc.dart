import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
//import 'package:super_enum/super_enum.dart';

part 'shop_time_picker_event.dart';
part 'shop_time_picker_state.dart';

class ShopTimePickerBloc
    extends Bloc<ShopTimePickerEvent, ShopTimePickerState> {
  ShopTimePickerBloc() : super(ShopTimePickerInitial()) {
    on<ShopTimePickerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
