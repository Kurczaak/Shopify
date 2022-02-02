import 'package:freezed_annotation/freezed_annotation.dart';

part 'primitive_hour.freezed.dart';

@freezed
abstract class PrimitiveHour with _$PrimitiveHour {
  const PrimitiveHour._();

  const factory PrimitiveHour({
    required int hours,
    required int minutes,
    required bool am,
  }) = _PrimitiveHour;

  bool get pm => !am;

  factory PrimitiveHour.am({required int hours, required int minutes}) =>
      PrimitiveHour(hours: hours, minutes: minutes, am: true);

  factory PrimitiveHour.pm({required int hours, required int minutes}) =>
      PrimitiveHour(hours: hours, minutes: minutes, am: false);

  @override
  String toString() {
    final hoursString = hours < 10 ? "0" + hours.toString() : hours.toString();
    final minutesString =
        minutes < 10 ? "0" + minutes.toString() : minutes.toString();
    final amOrPmString = am ? "AM" : "PM";

    return " $hoursString:$minutesString $amOrPmString";
  }
}
