import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/core/images/image_failure.dart';
import 'package:shopify_client/domain/core/images/photo.dart';
import 'package:shopify_client/infrastructure/core/images/image_picker_image_facade.dart';
import '../../utils/image_reader.dart';
import 'image_picker_image_facade_test.mocks.dart';

@GenerateMocks([ImagePicker])
void main() async {
  late ImagePickerImageFacade imagePickerImageFacade;
  late MockImagePicker mockImagePicker;
  final thisMoment = DateTime.now();
  final tLogo = await getImageFileFromAssets('test_logo.jpg');
  final logoBytes = tLogo.readAsBytesSync();
  final tXFileLogo =
      XFile.fromData(logoBytes, path: tLogo.path, lastModified: thisMoment);
  setUp(() {
    mockImagePicker = MockImagePicker();
    imagePickerImageFacade = ImagePickerImageFacade(mockImagePicker);
  });

  group('getShopLogo', () {
    test(
      'should call once imagePicker.pickImage',
      () async {
        // arrange
        when(mockImagePicker.pickImage(
                source: ImageSource.gallery,
                maxHeight: ShopLogo.maxHeight.toDouble(),
                maxWidth: ShopLogo.maxWidth.toDouble()))
            .thenAnswer((_) async => tXFileLogo);

        // act
        await imagePickerImageFacade.getShopLogo();
        // assert
        verify(mockImagePicker.pickImage(
                source: ImageSource.gallery,
                maxHeight: ShopLogo.maxHeight.toDouble(),
                maxWidth: ShopLogo.maxWidth.toDouble()))
            .called(1);
      },
    );
    test(
      'should throw ImageFailure when platform exception is thrown by image picker',
      () async {
        // arrange
        when(mockImagePicker.pickImage(
                source: ImageSource.gallery,
                maxHeight: ShopLogo.maxHeight.toDouble(),
                maxWidth: ShopLogo.maxWidth.toDouble()))
            .thenThrow(
                PlatformException(code: '101', message: 'unknown error'));
        // act
        final result = await imagePickerImageFacade.getShopLogo();
        // assert
        expect(result, left(const ImageFailure.unexpected()));
      },
    );

    test(
      'should return a valid ShopLogo',
      () async {
        // arrange
        final tShopLogo = ShopLogo(File(tXFileLogo.path));
        when(mockImagePicker.pickImage(
                source: ImageSource.gallery,
                maxHeight: ShopLogo.maxHeight.toDouble(),
                maxWidth: ShopLogo.maxWidth.toDouble()))
            .thenAnswer((_) async => tXFileLogo);
        // act
        final result = await imagePickerImageFacade.getShopLogo();
        // assert
        expect(result, equals(right<ImageFailure, ShopLogo>(tShopLogo)));
      },
    );
  });
}
