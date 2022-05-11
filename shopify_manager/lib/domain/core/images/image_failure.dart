import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_failure.freezed.dart';
// part 'image_failure.super.dart';

// @superEnum
// enum _ImageFailure {
//   @object
//   Unexpected,
//   @object
//   NoImageSelected,
//   @object
//   InvalidImageSize
// }

@freezed
class ImageFailure with _$ImageFailure {
  const factory ImageFailure.unexpected() = Unexpected;
  const factory ImageFailure.noImageSelected() = NoImageSelected;
  const factory ImageFailure.invalidImageSize() = InvalidImageSize;
}
