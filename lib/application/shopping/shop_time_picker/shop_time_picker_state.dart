part of 'shop_time_picker_bloc.dart';

@freezed
abstract class ShopTimePickerState with _$ShopTimePickerState {
  const factory ShopTimePickerState({
    required Week week,
    required bool showErrors,
  }) = _ShopTimePickerState;

  factory ShopTimePickerState.initial() => ShopTimePickerState(
        week: Week.empty(),
        showErrors: false,
      );
}
