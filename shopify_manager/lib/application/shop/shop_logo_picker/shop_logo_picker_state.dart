part of 'shop_logo_picker_bloc.dart';

@Sealed()
abstract class _ShopLogoPickerState {
  void initial();
  void loading();
  void loaded(ShopLogo logo);
  void error(ImageFailure failure);
}
