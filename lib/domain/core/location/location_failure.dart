import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'location_failure.super.dart';

@superEnum
enum _LocationFailure {
  @object
  Unexpected,
  @object
  NoLocationFound,
}
