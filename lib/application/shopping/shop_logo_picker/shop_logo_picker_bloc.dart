import 'package:bloc/bloc.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'shop_logo_picker_event.dart';
part 'shop_logo_picker_state.dart';
part 'shop_logo_picker_bloc.super.dart';

class ShopLogoPickerBloc
    extends Bloc<ShopLogoPickerEvent, ShopLogoPickerState> {
  ShopLogoPickerBloc() : super(const ShopLogoPickerState.initial()) {
    on<ShopLogoPickerEvent>((event, emit) {
      event.when(
        getShopLogo: (getShopLogo) {},
      );
    });
  }
}
