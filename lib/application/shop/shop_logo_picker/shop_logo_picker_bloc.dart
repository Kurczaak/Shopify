import 'package:bloc/bloc.dart';
import 'package:shopify_manager/domain/core/errors.dart';
import 'package:shopify_manager/domain/core/images/i_image_facade.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';
import 'package:injectable/injectable.dart';

part 'shop_logo_picker_event.dart';
part 'shop_logo_picker_state.dart';
part 'shop_logo_picker_bloc.super.dart';

@LazySingleton()
class ShopLogoPickerBloc
    extends Bloc<ShopLogoPickerEvent, ShopLogoPickerState> {
  final IImageFacade _imageFacade;
  ShopLogoPickerBloc(this._imageFacade)
      : super(const ShopLogoPickerState.initial()) {
    on<ShopLogoPickerEvent>((event, emit) async {
      await event.when(
        getShopLogo: () async {
          final previousState = state;
          emit(const Loading());
          final failureOrLogo = await _imageFacade.getShopLogo();

          failureOrLogo.fold((f) {
            f.when(
              invalidImageSize: () {
                emit(Error(failure: f));
              },
              unexpected: () {
                emit(Error(failure: f));
              },
              noImageSelected: () {
                previousState.when(
                    initial: () =>
                        emit(const Error(failure: NoImageSelected())),
                    loading: () => emit(const Initial()),
                    loaded: (loaded) => emit(loaded),
                    error: (error) => emit(error));
              },
            );
          },
              (shopLogo) => shopLogo.failureOrUnit.fold(
                  (failure) => failure.maybeMap(
                      orElse: () {},
                      shop: (shopFialure) {
                        shopFialure.f.maybeMap(
                            imageTooBig: (_) => emit(const Error(
                                failure: ImageFailure.invalidImageSize())),
                            imageTooSmall: (_) => emit(const Error(
                                failure: ImageFailure.invalidImageSize())),
                            // ignore: void_checks
                            orElse: () {
                              throw UnexpectedValueError(shopFialure);
                            });
                      }),
                  (_) => emit(Loaded(logo: shopLogo))));
        },
      );
    });
  }
}
