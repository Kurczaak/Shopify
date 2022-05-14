import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ImagePikcerInjectableModule {
  @LazySingleton()
  ImagePicker get imagePicker => ImagePicker();
}
