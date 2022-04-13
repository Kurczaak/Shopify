// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_logo_picker_bloc.dart';

// **************************************************************************
// Generator: super_enum_sealed_generators
// **************************************************************************

// ignore_for_file: unused_element, unused_field

// Migration guide for ShopLogoPickerEvent:
// For migration to dart_sealed, uncomment
// following generated manifest code, then
// replace it with your super_enum manifest
// then add dependencies to sealed_annotations
// and sealed_generators, then import
// sealed_annotations instead of
// super_enum_sealed_annotations, then change
// part file name from *.super.dart to
// *.sealed.dart, then rerun the build_runner.
// When you are done with migrating all sealed
// classes to dart_sealed, you can remove
// super_enum_sealed_annotations and
// super_enum_sealed_generators dependencies.
//
// @Sealed()
// abstract class _ShopLogoPickerEvent
// {
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('GetShopLogo')
// void getShopLogo();
// }

/// [ShopLogoPickerEvent] {
///
/// ([GetShopLogo] getShopLogo){} with data equality with wrap
///
/// }
@immutable
abstract class ShopLogoPickerEvent {
  const ShopLogoPickerEvent._internal();

  const factory ShopLogoPickerEvent.getShopLogo() = GetShopLogo;

  bool isGetShopLogo() => this is GetShopLogo;

  GetShopLogo asGetShopLogo() => this as GetShopLogo;

  GetShopLogo? asGetShopLogoOrNull() {
    final shopLogoPickerEvent = this;
    return shopLogoPickerEvent is GetShopLogo ? shopLogoPickerEvent : null;
  }

  R when<R extends Object?>({
    required R Function() getShopLogo,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is GetShopLogo) {
      return getShopLogo();
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function()? getShopLogo,
    required R Function(ShopLogoPickerEvent shopLogoPickerEvent) orElse,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is GetShopLogo) {
      return getShopLogo != null ? getShopLogo() : orElse(shopLogoPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function()? getShopLogo,
    required R orDefault,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is GetShopLogo) {
      return getShopLogo != null ? getShopLogo() : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? getShopLogo,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is GetShopLogo) {
      return getShopLogo?.call();
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function()? getShopLogo,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is GetShopLogo && getShopLogo != null) {
      return getShopLogo();
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function()? getShopLogo,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is GetShopLogo) {
      getShopLogo?.call();
    } else {
      throw AssertionError();
    }
  }
}

/// (([GetShopLogo] : [ShopLogoPickerEvent]) getShopLogo){}
///
/// with data equality
///
/// with wrap
@immutable
class GetShopLogo extends ShopLogoPickerEvent with EquatableMixin {
  const GetShopLogo() : super._internal();

  @override
  String toString() => 'ShopLogoPickerEvent.getShopLogo()';

  @override
  List<Object?> get props => [];
}

// ignore_for_file: unused_element, unused_field

// Migration guide for ShopLogoPickerState:
// For migration to dart_sealed, uncomment
// following generated manifest code, then
// replace it with your super_enum manifest
// then add dependencies to sealed_annotations
// and sealed_generators, then import
// sealed_annotations instead of
// super_enum_sealed_annotations, then change
// part file name from *.super.dart to
// *.sealed.dart, then rerun the build_runner.
// When you are done with migrating all sealed
// classes to dart_sealed, you can remove
// super_enum_sealed_annotations and
// super_enum_sealed_generators dependencies.
//
// @Sealed()
// abstract class _ShopLogoPickerState
// {
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Initial')
// void initial();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Loading')
// void loading();
//
// @WithEquality(Equality.data)
// @WithName('Loaded')
// void loaded(ShopLogo logo);
//
// @WithEquality(Equality.data)
// @WithName('Error')
// void error(ImageFailure failure);
// }

/// [ShopLogoPickerState] {
///
/// ([Initial] initial){} with data equality with wrap
///
/// ([Loading] loading){} with data equality with wrap
///
/// ([Loaded] loaded){[ShopLogo] logo} with data equality
///
/// ([Error] error){[ImageFailure] failure} with data equality
///
/// }
@immutable
abstract class ShopLogoPickerState {
  const ShopLogoPickerState._internal();

  const factory ShopLogoPickerState.initial() = Initial;

  const factory ShopLogoPickerState.loading() = Loading;

  const factory ShopLogoPickerState.loaded({
    required ShopLogo logo,
  }) = Loaded;

  const factory ShopLogoPickerState.error({
    required ImageFailure failure,
  }) = Error;

  bool isInitial() => this is Initial;

  bool isLoading() => this is Loading;

  bool isLoaded() => this is Loaded;

  bool isError() => this is Error;

  Initial asInitial() => this as Initial;

  Loading asLoading() => this as Loading;

  Loaded asLoaded() => this as Loaded;

  Error asError() => this as Error;

  Initial? asInitialOrNull() {
    final shopLogoPickerState = this;
    return shopLogoPickerState is Initial ? shopLogoPickerState : null;
  }

  Loading? asLoadingOrNull() {
    final shopLogoPickerState = this;
    return shopLogoPickerState is Loading ? shopLogoPickerState : null;
  }

  Loaded? asLoadedOrNull() {
    final shopLogoPickerState = this;
    return shopLogoPickerState is Loaded ? shopLogoPickerState : null;
  }

  Error? asErrorOrNull() {
    final shopLogoPickerState = this;
    return shopLogoPickerState is Error ? shopLogoPickerState : null;
  }

  R when<R extends Object?>({
    required R Function() initial,
    required R Function() loading,
    required R Function(Loaded loaded) loaded,
    required R Function(Error error) error,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is Initial) {
      return initial();
    } else if (shopLogoPickerState is Loading) {
      return loading();
    } else if (shopLogoPickerState is Loaded) {
      return loaded(shopLogoPickerState);
    } else if (shopLogoPickerState is Error) {
      return error(shopLogoPickerState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
    required R Function(ShopLogoPickerState shopLogoPickerState) orElse,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is Initial) {
      return initial != null ? initial() : orElse(shopLogoPickerState);
    } else if (shopLogoPickerState is Loading) {
      return loading != null ? loading() : orElse(shopLogoPickerState);
    } else if (shopLogoPickerState is Loaded) {
      return loaded != null
          ? loaded(shopLogoPickerState)
          : orElse(shopLogoPickerState);
    } else if (shopLogoPickerState is Error) {
      return error != null
          ? error(shopLogoPickerState)
          : orElse(shopLogoPickerState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
    required R orDefault,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is Initial) {
      return initial != null ? initial() : orDefault;
    } else if (shopLogoPickerState is Loading) {
      return loading != null ? loading() : orDefault;
    } else if (shopLogoPickerState is Loaded) {
      return loaded != null ? loaded(shopLogoPickerState) : orDefault;
    } else if (shopLogoPickerState is Error) {
      return error != null ? error(shopLogoPickerState) : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is Initial) {
      return initial?.call();
    } else if (shopLogoPickerState is Loading) {
      return loading?.call();
    } else if (shopLogoPickerState is Loaded) {
      return loaded?.call(shopLogoPickerState);
    } else if (shopLogoPickerState is Error) {
      return error?.call(shopLogoPickerState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is Initial && initial != null) {
      return initial();
    } else if (shopLogoPickerState is Loading && loading != null) {
      return loading();
    } else if (shopLogoPickerState is Loaded && loaded != null) {
      return loaded(shopLogoPickerState);
    } else if (shopLogoPickerState is Error && error != null) {
      return error(shopLogoPickerState);
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function()? initial,
    void Function()? loading,
    void Function(Loaded loaded)? loaded,
    void Function(Error error)? error,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is Initial) {
      initial?.call();
    } else if (shopLogoPickerState is Loading) {
      loading?.call();
    } else if (shopLogoPickerState is Loaded) {
      loaded?.call(shopLogoPickerState);
    } else if (shopLogoPickerState is Error) {
      error?.call(shopLogoPickerState);
    } else {
      throw AssertionError();
    }
  }
}

/// (([Initial] : [ShopLogoPickerState]) initial){}
///
/// with data equality
///
/// with wrap
@immutable
class Initial extends ShopLogoPickerState with EquatableMixin {
  const Initial() : super._internal();

  @override
  String toString() => 'ShopLogoPickerState.initial()';

  @override
  List<Object?> get props => [];
}

/// (([Loading] : [ShopLogoPickerState]) loading){}
///
/// with data equality
///
/// with wrap
@immutable
class Loading extends ShopLogoPickerState with EquatableMixin {
  const Loading() : super._internal();

  @override
  String toString() => 'ShopLogoPickerState.loading()';

  @override
  List<Object?> get props => [];
}

/// (([Loaded] : [ShopLogoPickerState]) loaded){[ShopLogo] logo}
///
/// with data equality
@immutable
class Loaded extends ShopLogoPickerState with EquatableMixin {
  const Loaded({
    required this.logo,
  }) : super._internal();

  final ShopLogo logo;

  @override
  String toString() => 'ShopLogoPickerState.loaded(logo: $logo)';

  @override
  List<Object?> get props => [
        logo,
      ];
}

/// (([Error] : [ShopLogoPickerState]) error){[ImageFailure] failure}
///
/// with data equality
@immutable
class Error extends ShopLogoPickerState with EquatableMixin {
  const Error({
    required this.failure,
  }) : super._internal();

  final ImageFailure failure;

  @override
  String toString() => 'ShopLogoPickerState.error(failure: $failure)';

  @override
  List<Object?> get props => [
        failure,
      ];
}
