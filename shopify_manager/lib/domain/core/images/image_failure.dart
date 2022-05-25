import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_failure.freezed.dart';

@freezed
class ImageFailure with _$ImageFailure {
  const factory ImageFailure.unexpected() = Unexpected;
  const factory ImageFailure.noImageSelected() = NoImageSelected;
  const factory ImageFailure.invalidImageSize() = InvalidImageSize;
}
