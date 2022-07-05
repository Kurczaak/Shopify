import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop.dart';

part 'shop_picker_event.dart';
part 'shop_picker_state.dart';
part 'shop_picker_bloc.freezed.dart';
part 'shop_picker_bloc.sealed.dart';

class ShopPickerBloc extends Bloc<ShopPickerEvent, ShopPickerState> {
  ShopPickerBloc() : super(ShopPickerState.initial()) {
    on<ShopPickerEvent>((event, emit) {
      event.when(
          radiusChanged: (double radius) {},
          watchNearbyShops: () {},
          searchLocation: (String stringLocation) {},
          getYourLocation: () {});
    });
  }
}
