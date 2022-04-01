import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopify_manager/application/shop/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/infrastructure/core/images/image_picker_image_facade.dart';

import '../../../utils/image_reader.dart';

class MockImagePickerImageFacade extends Mock
    implements ImagePickerImageFacade {}

void main() async {
  late ShopLogoPickerBloc bloc;
  late MockImagePickerImageFacade mockImageFacade;

  final tLogo = await getImageFileFromAssets('test_logo.jpg');
  final tShopLogo = ShopLogo(tLogo);
  final tTooSmallLogo = await getImageFileFromAssets('too_small_logo.jpg');
  final tTooSmallShopLogo = ShopLogo(tTooSmallLogo);

  setUp(() {
    mockImageFacade = MockImagePickerImageFacade();
    bloc = ShopLogoPickerBloc(mockImageFacade);
  });

  group('getShopLogo', () {
    group('when no image has been selected', () {
      blocTest(
        'emits [Loading, Error] after [Initial]',
        build: () => ShopLogoPickerBloc(mockImageFacade),
        setUp: () => when(() => mockImageFacade.getShopLogo()).thenAnswer(
            (_) async => left(const ImageFailure.noImageSelected())),
        act: (ShopLogoPickerBloc bloc) => bloc.add(const GetShopLogo()),
        expect: () =>
            const [Loading(), Error(failure: ImageFailure.noImageSelected())],
      );
      blocTest(
        'emits [Loading] and reemits [Loaded]',
        build: () => ShopLogoPickerBloc(mockImageFacade),
        setUp: () => when(() => mockImageFacade.getShopLogo()).thenAnswer(
            (_) async => left(const ImageFailure.noImageSelected())),
        seed: () => ShopLogoPickerState.loaded(logo: tShopLogo),
        act: (ShopLogoPickerBloc bloc) => bloc.add(const GetShopLogo()),
        expect: () => [const Loading(), Loaded(logo: tShopLogo)],
      );

      blocTest(
        'emits [Loading] and reemits [Error]',
        build: () => ShopLogoPickerBloc(mockImageFacade),
        setUp: () => when(() => mockImageFacade.getShopLogo()).thenAnswer(
            (_) async => left(const ImageFailure.noImageSelected())),
        seed: () => const ShopLogoPickerState.error(
            failure: ImageFailure.noImageSelected()),
        act: (ShopLogoPickerBloc bloc) => bloc.add(const GetShopLogo()),
        expect: () =>
            const [Loading(), Error(failure: ImageFailure.noImageSelected())],
      );
    });

    blocTest(
      'emits [] when nothing is added',
      build: () => ShopLogoPickerBloc(mockImageFacade),
      expect: () => [],
    );

    blocTest(
      'emits [Loading, Loaded] when logo has been chosen',
      build: () => ShopLogoPickerBloc(mockImageFacade),
      setUp: () => when(() => mockImageFacade.getShopLogo())
          .thenAnswer((_) async => right(tShopLogo)),
      act: (ShopLogoPickerBloc bloc) => bloc.add(const GetShopLogo()),
      expect: () => [const Loading(), Loaded(logo: tShopLogo)],
    );
    blocTest(
      'emits [Loading, Error] when chosen logo has invalid size',
      build: () => ShopLogoPickerBloc(mockImageFacade),
      setUp: () => when(() => mockImageFacade.getShopLogo())
          .thenAnswer((_) async => right(tTooSmallShopLogo)),
      act: (ShopLogoPickerBloc bloc) => bloc.add(const GetShopLogo()),
      expect: () =>
          const [Loading(), Error(failure: ImageFailure.invalidImageSize())],
    );

    blocTest(
      'emits [Loading, Error] when unexpected failure happens',
      build: () => ShopLogoPickerBloc(mockImageFacade),
      setUp: () => when(() => mockImageFacade.getShopLogo())
          .thenAnswer((_) async => left(const ImageFailure.unexpected())),
      act: (ShopLogoPickerBloc bloc) => bloc.add(const GetShopLogo()),
      expect: () =>
          const [Loading(), Error(failure: ImageFailure.unexpected())],
    );
  });
}
