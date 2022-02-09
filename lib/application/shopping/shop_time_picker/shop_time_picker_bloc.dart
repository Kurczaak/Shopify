import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/shopping/time/week.dart';
import 'package:shopify_manager/presentation/register_shop/opening_hours/misc/day_presentation_classes.dart';

part 'shop_time_picker_event.dart';
part 'shop_time_picker_state.dart';
part 'shop_time_picker_bloc.freezed.dart';

class ShopTimePickerBloc
    extends Bloc<ShopTimePickerEvent, ShopTimePickerState> {
  ShopTimePickerBloc() : super(ShopTimePickerState.initial()) {
    on<ShopTimePickerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
