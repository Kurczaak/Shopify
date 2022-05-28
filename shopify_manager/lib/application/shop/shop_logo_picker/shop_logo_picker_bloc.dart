import 'package:bloc/bloc.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_manager/domain/core/images/i_image_facade.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:injectable/injectable.dart';

part 'shop_logo_picker_bloc.sealed.dart';
part 'shop_logo_picker_event.dart';
part 'shop_logo_picker_state.dart';

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
          emit(const ShopLogoPickerStateLoading());
          final failureOrPhoto = await _imageFacade.getPhoto(
              maxHeight: ShopLogo.maxHeight,
              maxWidth: ShopLogo.maxWidth,
              minHeight: ShopLogo.minHeight,
              minWidth: ShopLogo.minWidth);

          failureOrPhoto.fold((f) {
            f.when(
              invalidImageSize: () {
                emit(ShopLogoPickerStateError(failure: f));
              },
              unexpected: () {
                emit(ShopLogoPickerStateError(failure: f));
              },
              noImageSelected: () {
                previousState.when(
                    initial: () => emit(const ShopLogoPickerStateError(
                        failure: ImageFailure.noImageSelected())),
                    loading: () => emit(const ShopLogoPickerStateInitial()),
                    loaded: (logo) =>
                        emit(ShopLogoPickerStateLoaded(logo: logo)),
                    error: (error) =>
                        emit(ShopLogoPickerStateError(failure: error)));
              },
            );
          },
              (photo) => photo.failureOrUnit.fold(
                  (failure) => failure.maybeMap(
                      orElse: () {},
                      core: (imageFailure) {
                        imageFailure.f.maybeMap(
                            imageTooBig: (_) => emit(
                                const ShopLogoPickerStateError(
                                    failure: ImageFailure.invalidImageSize())),
                            imageTooSmall: (_) => emit(
                                const ShopLogoPickerStateError(
                                    failure: ImageFailure.invalidImageSize())),
                            // ignore: void_checks
                            orElse: () {
                              throw UnexpectedValueError(imageFailure);
                            });
                      }),
                  (_) => emit(ShopLogoPickerStateLoaded(
                      logo: ShopLogo(photo.getOrCrash())))));
        },
      );
    });
  }
}
