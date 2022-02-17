import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_manager/application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:mockito/annotations.dart';
import 'package:shopify_manager/infrastructure/core/images/image_picker_image_facade.dart';

import '../../../utils/image_reader.dart';
import 'shop_logo_picker_bloc_test.mocks.dart';

@GenerateMocks([ImagePickerImageFacade])
void main() async {
  late ShopLogoPickerBloc bloc;
  late MockImagePickerImageFacade mockImageFacade;

  final tLogo = await getImageFileFromAssets('test_logo.jpg');
  final tShopLogo = ShopLogo(tLogo);

  setUp(() {
    mockImageFacade = MockImagePickerImageFacade();
    bloc = ShopLogoPickerBloc(mockImageFacade);
  });

  blocTest(
    'emits [] when nothing is added',
    build: () => ShopLogoPickerBloc(mockImageFacade),
    expect: () => [],
  );
  blocTest(
    'emits Loading and Loaded states with a ShopLogo',
    build: () => ShopLogoPickerBloc(mockImageFacade),
    setUp: () => when(mockImageFacade.getShopLogo())
        .thenAnswer((_) async => right(tShopLogo)),
    act: (ShopLogoPickerBloc bloc) => bloc.add(const GetShopLogo()),
    expect: () => [const Loading(), Loaded(logo: tShopLogo)],
  );

  blocTest(
    'emits Loading and Error states when failed to pick logo',
    build: () => ShopLogoPickerBloc(mockImageFacade),
    setUp: () => when(mockImageFacade.getShopLogo())
        .thenAnswer((_) async => left(const ImageFailure.unexpected())),
    act: (ShopLogoPickerBloc bloc) => bloc.add(const GetShopLogo()),
    expect: () =>
        [const Loading(), const Error(failure: ImageFailure.unexpected())],
  );
}
