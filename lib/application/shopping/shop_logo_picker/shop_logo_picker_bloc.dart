import 'package:bloc/bloc.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/infrastructure/core/images/image_picker_image_facade.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'shop_logo_picker_event.dart';
part 'shop_logo_picker_state.dart';
part 'shop_logo_picker_bloc.super.dart';

class ShopLogoPickerBloc
    extends Bloc<ShopLogoPickerEvent, ShopLogoPickerState> {
  final ImagePickerImageFacade _imageFacade;
  ShopLogoPickerBloc(this._imageFacade)
      : super(const ShopLogoPickerState.initial()) {
    on<ShopLogoPickerEvent>((event, emit) {
      event.when(
        getShopLogo: () async {
          emit(const Loading());
          final failureOrLogo = await _imageFacade.getShopLogo();
          failureOrLogo.fold((f) => emit(Error(failure: f)),
              (shopLogo) => emit(Loaded(logo: shopLogo)));
        },
      );
    });
  }
}
