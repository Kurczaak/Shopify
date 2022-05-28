import 'package:freezed_annotation/freezed_annotation.dart';

part 'primitive_hour.freezed.dart';

@freezed
class PrimitiveHour with _$PrimitiveHour {
  const PrimitiveHour._();

  const factory PrimitiveHour({
    required int hours,
    required int minutes,
  }) = _PrimitiveHour;

  @override
  String toString() {
    final hoursString = hours < 10 ? "0" + hours.toString() : hours.toString();
    final minutesString =
        minutes < 10 ? "0" + minutes.toString() : minutes.toString();

    return " $hoursString:$minutesString";
  }
}
