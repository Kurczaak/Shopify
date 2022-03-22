import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'image_failure.super.dart';

@superEnum
enum _ImageFailure {
  @object
  Unexpected,
  @object
  NoImageSelected,
  @object
  InvalidImageSize
}
