import 'package:freezed_annotation/freezed_annotation.dart';
part 'barcode_failure.freezed.dart';

@freezed
abstract class BarcodeFailure with _$BarcodeFailure {
  const factory BarcodeFailure.unexpected() = Unexpected;
}
