import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:injectable/injectable.dart';

part 'shop_location_picker_bloc.freezed.dart';
part 'shop_location_picker_event.dart';
part 'shop_location_picker_state.dart';

@injectable
class ShopLocationPickerBloc
    extends Bloc<ShopLocationPickerEvent, ShopLocationPickerState> {
  ShopLocationPickerBloc() : super(ShopLocationPickerState.initial()) {
    on<ShopLocationPickerEvent>((event, emit) {
      event.map(
        locationChanged: (e) {
          emit(state.copyWith(
              location: some(Location.fromLatLang(
                  latitude: e.latitude, longitude: e.longitude))));
        },
      );
    });
  }
}
