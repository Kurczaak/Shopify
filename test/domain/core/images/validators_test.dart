import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/images/validators.dart';
import 'package:mockito/annotations.dart';

import '../../../utils/image_reader.dart';
//import 'validators_test.mocks.dart';

//@GenerateMocks([PhotoValidator])
void main() async {
  //final MockPhotoValidator mockPhotoValidator = MockPhotoValidator();
  XFile image = await getImageFileFromAssets('logo.png');
  final photoValidator = PhotoValidatorImpl();

  test(
    'should ',
    () async {
      // arrange

      // act
      final result = await photoValidator.validatePhotoSize(image,
          height: 320, width: 100);
      // assert
      expect(result, right(image));
    },
  );
}
