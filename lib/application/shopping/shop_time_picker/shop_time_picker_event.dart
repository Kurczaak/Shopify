part of 'shop_time_picker_bloc.dart';

@freezed
abstract class ShopTimePickerEvent with _$ShopTimePickerEvent {
  const factory ShopTimePickerEvent.mondayChanged(DayPrimitive monday) =
      _MondayChanged;
  const factory ShopTimePickerEvent.tuesdayChanged(DayPrimitive tuesday) =
      _TuesdayChanged;
  const factory ShopTimePickerEvent.wednesdayChanged(DayPrimitive wednesday) =
      _WednesdayChanged;
  const factory ShopTimePickerEvent.thursdayChanged(DayPrimitive thursday) =
      _ThursdayChanged;
  const factory ShopTimePickerEvent.fridayChanged(DayPrimitive friday) =
      _FridayChanged;
  const factory ShopTimePickerEvent.saturdayChanged(DayPrimitive saturday) =
      _SaturdayChanged;
  const factory ShopTimePickerEvent.sundayChanged(DayPrimitive sunday) =
      _SundayChanged;
  const factory ShopTimePickerEvent.proceeded() = _Proceeded;
}
