// ignore_for_file: unused_field, constant_identifier_names

import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'location_failure.super.dart';

@superEnum
// ignore: unused_element
enum _LocationFailure {
  @object
  Unexpected,
  @object
  NoLocationFound,
  @object
  Timeout,
  @object
  PermissionDenied,
}
