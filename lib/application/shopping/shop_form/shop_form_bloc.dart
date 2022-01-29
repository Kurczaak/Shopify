import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/i_shop_repository.dart';
import 'package:shopify_manager/domain/shopping/shop.dart';
import 'package:shopify_manager/domain/shopping/shop_failure.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';

part 'shop_form_event.dart';
part 'shop_form_state.dart';
part 'shop_form_bloc.freezed.dart';

@injectable
class ShopFormBloc extends Bloc<ShopFormEvent, ShopFormState> {
  final IShopRepository _shopRepository;
  ShopFormBloc(this._shopRepository) : super(ShopFormState.initial()) {
    on<ShopFormEvent>((event, emit) async {
      await event.map(nameChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              shopName: ShopName(e.nameStr),
            ),
            saveFailureOrSuccessOption: none(),
          ),
        );
      }, streetNameChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address
                  .copyWith(streetName: StreetName(e.streetNameStr)),
            ),
            saveFailureOrSuccessOption: none(),
          ),
        );
      }, streetNumberChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address
                  .copyWith(streetNumber: StreetNumber(e.streetNumberStr)),
            ),
            saveFailureOrSuccessOption: none(),
          ),
        );
      }, apartmentNumberChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address.copyWith(
                  apartmentNumber: AddressNumber(e.apartmentNumberStr)),
            ),
            saveFailureOrSuccessOption: none(),
          ),
        );
      }, postalCodeChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address
                  .copyWith(postalCode: PostalCode(e.postalCodeStr)),
            ),
            saveFailureOrSuccessOption: none(),
          ),
        );
      }, cityChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address.copyWith(city: CityName(e.cityStr)),
            ),
            saveFailureOrSuccessOption: none(),
          ),
        );
      }, saved: (e) async {
        emit(
          state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ),
        );

        if (state.shop.failureOption.isNone()) {
          final failureOrSuccess = await _shopRepository.create(state.shop);
          emit.isDone;
          emit(
            state.copyWith(
              isSaving: false,
              showErrorMessages: false,
              saveFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        } else {
          emit(
            state.copyWith(
              isSaving: false,
              showErrorMessages: true,
              saveFailureOrSuccessOption: none(),
            ),
          );
        }
      });
    });
  }
}
