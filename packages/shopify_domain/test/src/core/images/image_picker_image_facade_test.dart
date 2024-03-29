import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/core/images/image_failure.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/src/core/images/image_picker_photo_picker_implementation.dart';
import '../../../utils/image_reader.dart';
import 'image_picker_image_facade_test.mocks.dart';

@GenerateMocks([ImagePicker, XFile])
void main() async {
  late ImagePickerImagePickerPhotoPickerImpl imagePickerImageFacade;
  late MockImagePicker mockImagePicker;
  late MockXFile mockXFile;
  late List<MockXFile> mockedXFilesList;

  final thisMoment = DateTime.now();
  final tLogo = await getImageFileFromAssets('test_logo.jpg');
  final logoBytes = tLogo.readAsBytesSync();
  final tXFileLogo =
      XFile.fromData(logoBytes, path: tLogo.path, lastModified: thisMoment);

  const int max = 5;
  const int minHeight = 100;
  const int minWidth = 100;
  const int maxHeight = 1000;
  const int min = 1;
  const int maxWidth = 1000;

  setUp(() {
    mockImagePicker = MockImagePicker();
    imagePickerImageFacade =
        ImagePickerImagePickerPhotoPickerImpl(mockImagePicker);
    mockXFile = MockXFile();
    mockedXFilesList = [mockXFile, mockXFile, mockXFile];
    when(mockImagePicker.pickMultiImage(
      maxHeight: maxHeight.toDouble(),
      maxWidth: maxWidth.toDouble(),
    )).thenAnswer((_) async => mockedXFilesList);
    when(mockXFile.readAsBytes()).thenAnswer((_) => tXFileLogo.readAsBytes());
    when(mockXFile.path).thenReturn(tXFileLogo.path);
  });

  group('getMultiplePhotos', () {
    test(
      'should call pickMultiImage with passed parameters',
      () async {
        // act
        await imagePickerImageFacade.getMultiplePhotos(
          min: min,
          max: max,
          maxHeight: maxHeight,
          maxWidth: maxWidth,
          minHeight: minHeight,
          minWidth: minWidth,
        );
        // assert
        await untilCalled(mockImagePicker.pickMultiImage(
          maxHeight: maxHeight.toDouble(),
          maxWidth: maxWidth.toDouble(),
        ));
        verify(mockImagePicker.pickMultiImage(
          maxHeight: maxHeight.toDouble(),
          maxWidth: maxWidth.toDouble(),
        ));
      },
    );

    test(
      'should convert all the files to bytes',
      () async {
        // arrange
        when(mockXFile.readAsBytes())
            .thenAnswer((_) => tXFileLogo.readAsBytes());
        // act
        await imagePickerImageFacade.getMultiplePhotos(
          min: min,
          max: max,
          maxHeight: maxHeight,
          maxWidth: maxWidth,
          minHeight: minHeight,
          minWidth: minWidth,
        );
        // assert
        for (final _ in mockedXFilesList) {
          await untilCalled(mockXFile.readAsBytes());
        }
        verify(mockXFile.readAsBytes()).called(mockedXFilesList.length);
      },
    );
  });

  group('getPhoto', () {
    test(
      'should call once imagePicker.pickImage',
      () async {
        // arrange
        when(mockImagePicker.pickImage(
                source: ImageSource.gallery,
                maxHeight: Photo.maxHeight.toDouble(),
                maxWidth: Photo.maxWidth.toDouble()))
            .thenAnswer((_) async => tXFileLogo);

        // act
        await imagePickerImageFacade.getPhoto(
            maxHeight: Photo.maxHeight, maxWidth: Photo.maxWidth);
        // assert
        verify(mockImagePicker.pickImage(
                source: ImageSource.gallery,
                maxHeight: Photo.maxHeight.toDouble(),
                maxWidth: Photo.maxWidth.toDouble()))
            .called(1);
      },
    );
    test(
      'should throw ImageFailure when platform exception is thrown by image picker',
      () async {
        // arrange
        when(mockImagePicker.pickImage(
                source: ImageSource.gallery,
                maxHeight: Photo.maxHeight.toDouble(),
                maxWidth: Photo.maxWidth.toDouble()))
            .thenThrow(
                PlatformException(code: '101', message: 'unknown error'));
        // act
        final result = await imagePickerImageFacade.getPhoto(
            maxHeight: Photo.maxHeight, maxWidth: Photo.maxWidth);
        // assert
        expect(result, left(const ImageFailure.unexpected()));
      },
    );

    test(
      'should return ImageFailure when image is too small',
      () async {
        // arrange
        final tooSmallLogo = await getImageFileFromAssets('too_small_logo.jpg');
        final logoBytes = tooSmallLogo.readAsBytesSync();
        final tXFileLogo = XFile.fromData(logoBytes,
            path: tLogo.path, lastModified: thisMoment);
        when(mockImagePicker.pickImage(
                source: ImageSource.gallery,
                maxHeight: Photo.maxHeight.toDouble(),
                maxWidth: Photo.maxWidth.toDouble()))
            .thenAnswer((_) async => tXFileLogo);
        // act
        final result = await imagePickerImageFacade.getPhoto(
            maxHeight: Photo.maxHeight, maxWidth: Photo.maxWidth);
        // assert
        expect(result, left(const ImageFailure.invalidImageSize()));
      },
    );

    test(
      'should return ImageFailure when image is too big',
      () async {
        // arrange
        final tooSmallLogo = await getImageFileFromAssets('too_big_logo.jpg');
        final logoBytes = tooSmallLogo.readAsBytesSync();
        final tXFileLogo = XFile.fromData(logoBytes,
            path: tLogo.path, lastModified: thisMoment);
        when(mockImagePicker.pickImage(
                source: ImageSource.gallery,
                maxHeight: Photo.maxHeight.toDouble(),
                maxWidth: Photo.maxWidth.toDouble()))
            .thenAnswer((_) async => tXFileLogo);
        // act
        final result = await imagePickerImageFacade.getPhoto(
            maxHeight: Photo.maxHeight, maxWidth: Photo.maxWidth);
        // assert
        expect(result, left(const ImageFailure.invalidImageSize()));
      },
    );

    test(
      'should return a valid Photo',
      () async {
        // arrange
        final tPhoto = Photo(File(tXFileLogo.path));
        when(mockImagePicker.pickImage(
                source: ImageSource.gallery,
                maxHeight: Photo.maxHeight.toDouble(),
                maxWidth: Photo.maxWidth.toDouble()))
            .thenAnswer((_) async => tXFileLogo);
        // act
        final result = await imagePickerImageFacade.getPhoto(
            maxHeight: Photo.maxHeight, maxWidth: Photo.maxWidth);
        // assert
        expect(result, equals(right<ImageFailure, Photo>(tPhoto)));
      },
    );
  });
}
