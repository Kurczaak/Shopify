import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';

part 'shop_registration_event.dart';
part 'shop_registration_state.dart';
part 'shop_registration_bloc.super.dart';

@injectable
class ShopRegistrationBloc
    extends Bloc<ShopRegistrationEvent, ShopRegistrationState> {
  final ShopFormBloc _shopFormBloc;
  final ShopLocationPickerBloc _shopLocationPickerBloc;
  final ShopTimePickerBloc _shopTimePickerBloc;
  final ShopLogoPickerBloc _shopLogoPickerBloc;

  late final StreamSubscription _shopFormBlocSubscription;

  ShopRegistrationBloc(this._shopFormBloc, this._shopLocationPickerBloc,
      this._shopTimePickerBloc, this._shopLogoPickerBloc)
      : super(ShopRegistrationInitial()) {
    _shopFormBlocSubscription = _shopFormBloc.stream.listen((state) {});

    on<ShopRegistrationEvent>((event, emit) {
      event.when(
        initial: () {},
        formSaved: () {},
      );
    });
  }
}
