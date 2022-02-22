import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/i_shop_repository.dart';
import 'package:shopify_manager/domain/shopping/shop_form.dart';
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
          ),
        );
      }, streetNameChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address
                  .copyWith(streetName: StreetName(e.streetNameStr)),
            ),
          ),
        );
      }, streetNumberChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address
                  .copyWith(streetNumber: StreetNumber(e.streetNumberStr)),
            ),
          ),
        );
      }, apartmentNumberChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address.copyWith(
                  apartmentNumber: AddressNumber(e.apartmentNumberStr)),
            ),
          ),
        );
      }, postalCodeChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address
                  .copyWith(postalCode: PostalCode(e.postalCodeStr)),
            ),
          ),
        );
      }, cityChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address.copyWith(city: CityName(e.cityStr)),
            ),
          ),
        );
      }, proceeded: (e) {
        emit(
          state.copyWith(),
        );

        if (state.shop.failureOption.isNone()) {
          emit(
            state.copyWith(
              showErrorMessages: false,
            ),
          );
        } else {
          emit(
            state.copyWith(
              showErrorMessages: true,
            ),
          );
        }
      });
    });
  }
}
