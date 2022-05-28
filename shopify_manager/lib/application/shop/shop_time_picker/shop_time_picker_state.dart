part of 'shop_time_picker_bloc.dart';

@freezed
class ShopTimePickerState with _$ShopTimePickerState {
  const factory ShopTimePickerState({
    required Week week,
    required bool showErrors,
    required bool saved,
  }) = _ShopTimePickerState;

  factory ShopTimePickerState.initial() => ShopTimePickerState(
        week: Week.empty(),
        showErrors: false,
        saved: false,
      );
  factory ShopTimePickerState.saved({required Week week}) =>
      _ShopTimePickerState(week: week, showErrors: false, saved: true);
}
