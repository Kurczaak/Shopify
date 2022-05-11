import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shop/shop_form.dart';
import 'package:shopify_manager/domain/shop/value_objects.dart';

part 'shop_form_event.dart';
part 'shop_form_state.dart';
part 'shop_form_bloc.freezed.dart';

@LazySingleton()
class ShopFormBloc extends Bloc<ShopFormEvent, ShopFormState> {
  ShopFormBloc() : super(ShopFormState.initial()) {
    on<ShopFormEvent>((event, emit) {
      event.map(nameChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              shopName: ShopName(e.nameStr),
            ),
            saved: false,
          ),
        );
      }, streetNameChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address
                  .copyWith(streetName: StreetName(e.streetNameStr)),
            ),
            saved: false,
          ),
        );
      }, streetNumberChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address
                  .copyWith(streetNumber: StreetNumber(e.streetNumberStr)),
            ),
            saved: false,
          ),
        );
      }, apartmentNumberChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address.copyWith(
                  apartmentNumber: AddressNumber(e.apartmentNumberStr)),
            ),
            saved: false,
          ),
        );
      }, postalCodeChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address
                  .copyWith(postalCode: PostalCode(e.postalCodeStr)),
            ),
            saved: false,
          ),
        );
      }, cityChanged: (e) {
        emit(
          state.copyWith(
            shop: state.shop.copyWith(
              address: state.shop.address.copyWith(city: CityName(e.cityStr)),
            ),
            saved: false,
          ),
        );
      }, proceeded: (e) {
        if (state.shop.failureOption.isNone()) {
          emit(
            state.copyWith(
              showErrorMessages: false,
              saved: true,
            ),
          );
          emit(
            state.copyWith(
              saved: false,
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
