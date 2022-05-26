// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_logo_picker_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [ShopLogoPickerEvent] {
///
/// ([ShopLogoPickerEventGetShopLogo] getShopLogo){} with data equality
///
/// }
@SealedManifest(_ShopLogoPickerEvent)
abstract class ShopLogoPickerEvent {
  const ShopLogoPickerEvent._internal();

  const factory ShopLogoPickerEvent.getShopLogo() =
      ShopLogoPickerEventGetShopLogo;

  bool get isGetShopLogo => this is ShopLogoPickerEventGetShopLogo;

  ShopLogoPickerEventGetShopLogo get asGetShopLogo =>
      this as ShopLogoPickerEventGetShopLogo;

  ShopLogoPickerEventGetShopLogo? get asGetShopLogoOrNull {
    final shopLogoPickerEvent = this;
    return shopLogoPickerEvent is ShopLogoPickerEventGetShopLogo
        ? shopLogoPickerEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function() getShopLogo,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is ShopLogoPickerEventGetShopLogo) {
      return getShopLogo();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? getShopLogo,
    required R Function(ShopLogoPickerEvent shopLogoPickerEvent) orElse,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is ShopLogoPickerEventGetShopLogo) {
      return getShopLogo != null ? getShopLogo() : orElse(shopLogoPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? getShopLogo,
    void Function(ShopLogoPickerEvent shopLogoPickerEvent)? orElse,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is ShopLogoPickerEventGetShopLogo) {
      if (getShopLogo != null) {
        getShopLogo();
      } else if (orElse != null) {
        orElse(shopLogoPickerEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? getShopLogo,
    R Function(ShopLogoPickerEvent shopLogoPickerEvent)? orElse,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is ShopLogoPickerEventGetShopLogo) {
      return getShopLogo != null
          ? getShopLogo()
          : orElse?.call(shopLogoPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ShopLogoPickerEventGetShopLogo getShopLogo) getShopLogo,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is ShopLogoPickerEventGetShopLogo) {
      return getShopLogo(shopLogoPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ShopLogoPickerEventGetShopLogo getShopLogo)? getShopLogo,
    required R Function(ShopLogoPickerEvent shopLogoPickerEvent) orElse,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is ShopLogoPickerEventGetShopLogo) {
      return getShopLogo != null
          ? getShopLogo(shopLogoPickerEvent)
          : orElse(shopLogoPickerEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ShopLogoPickerEventGetShopLogo getShopLogo)? getShopLogo,
    void Function(ShopLogoPickerEvent shopLogoPickerEvent)? orElse,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is ShopLogoPickerEventGetShopLogo) {
      if (getShopLogo != null) {
        getShopLogo(shopLogoPickerEvent);
      } else if (orElse != null) {
        orElse(shopLogoPickerEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ShopLogoPickerEventGetShopLogo getShopLogo)? getShopLogo,
    R Function(ShopLogoPickerEvent shopLogoPickerEvent)? orElse,
  }) {
    final shopLogoPickerEvent = this;
    if (shopLogoPickerEvent is ShopLogoPickerEventGetShopLogo) {
      return getShopLogo != null
          ? getShopLogo(shopLogoPickerEvent)
          : orElse?.call(shopLogoPickerEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ShopLogoPickerEventGetShopLogo] : [ShopLogoPickerEvent]) getShopLogo){}
///
/// with data equality
class ShopLogoPickerEventGetShopLogo extends ShopLogoPickerEvent
    with EquatableMixin {
  const ShopLogoPickerEventGetShopLogo() : super._internal();

  @override
  String toString() => 'ShopLogoPickerEvent.getShopLogo()';

  @override
  List<Object?> get props => [];
}

/// [ShopLogoPickerState] {
///
/// ([ShopLogoPickerStateInitial] initial){} with data equality
///
/// ([ShopLogoPickerStateLoading] loading){} with data equality
///
/// ([ShopLogoPickerStateLoaded] loaded){[ShopLogo] logo} with data equality
///
/// ([ShopLogoPickerStateError] error){[ImageFailure] failure} with data equality
///
/// }
@SealedManifest(_ShopLogoPickerState)
abstract class ShopLogoPickerState {
  const ShopLogoPickerState._internal();

  const factory ShopLogoPickerState.initial() = ShopLogoPickerStateInitial;

  const factory ShopLogoPickerState.loading() = ShopLogoPickerStateLoading;

  const factory ShopLogoPickerState.loaded({
    required ShopLogo logo,
  }) = ShopLogoPickerStateLoaded;

  const factory ShopLogoPickerState.error({
    required ImageFailure failure,
  }) = ShopLogoPickerStateError;

  bool get isInitial => this is ShopLogoPickerStateInitial;

  bool get isLoading => this is ShopLogoPickerStateLoading;

  bool get isLoaded => this is ShopLogoPickerStateLoaded;

  bool get isError => this is ShopLogoPickerStateError;

  ShopLogoPickerStateInitial get asInitial =>
      this as ShopLogoPickerStateInitial;

  ShopLogoPickerStateLoading get asLoading =>
      this as ShopLogoPickerStateLoading;

  ShopLogoPickerStateLoaded get asLoaded => this as ShopLogoPickerStateLoaded;

  ShopLogoPickerStateError get asError => this as ShopLogoPickerStateError;

  ShopLogoPickerStateInitial? get asInitialOrNull {
    final shopLogoPickerState = this;
    return shopLogoPickerState is ShopLogoPickerStateInitial
        ? shopLogoPickerState
        : null;
  }

  ShopLogoPickerStateLoading? get asLoadingOrNull {
    final shopLogoPickerState = this;
    return shopLogoPickerState is ShopLogoPickerStateLoading
        ? shopLogoPickerState
        : null;
  }

  ShopLogoPickerStateLoaded? get asLoadedOrNull {
    final shopLogoPickerState = this;
    return shopLogoPickerState is ShopLogoPickerStateLoaded
        ? shopLogoPickerState
        : null;
  }

  ShopLogoPickerStateError? get asErrorOrNull {
    final shopLogoPickerState = this;
    return shopLogoPickerState is ShopLogoPickerStateError
        ? shopLogoPickerState
        : null;
  }

  R when<R extends Object?>({
    required R Function() initial,
    required R Function() loading,
    required R Function(ShopLogo logo) loaded,
    required R Function(ImageFailure failure) error,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is ShopLogoPickerStateInitial) {
      return initial();
    } else if (shopLogoPickerState is ShopLogoPickerStateLoading) {
      return loading();
    } else if (shopLogoPickerState is ShopLogoPickerStateLoaded) {
      return loaded(shopLogoPickerState.logo);
    } else if (shopLogoPickerState is ShopLogoPickerStateError) {
      return error(shopLogoPickerState.failure);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(ShopLogo logo)? loaded,
    R Function(ImageFailure failure)? error,
    required R Function(ShopLogoPickerState shopLogoPickerState) orElse,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is ShopLogoPickerStateInitial) {
      return initial != null ? initial() : orElse(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateLoading) {
      return loading != null ? loading() : orElse(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateLoaded) {
      return loaded != null
          ? loaded(shopLogoPickerState.logo)
          : orElse(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateError) {
      return error != null
          ? error(shopLogoPickerState.failure)
          : orElse(shopLogoPickerState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? initial,
    void Function()? loading,
    void Function(ShopLogo logo)? loaded,
    void Function(ImageFailure failure)? error,
    void Function(ShopLogoPickerState shopLogoPickerState)? orElse,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is ShopLogoPickerStateInitial) {
      if (initial != null) {
        initial();
      } else if (orElse != null) {
        orElse(shopLogoPickerState);
      }
    } else if (shopLogoPickerState is ShopLogoPickerStateLoading) {
      if (loading != null) {
        loading();
      } else if (orElse != null) {
        orElse(shopLogoPickerState);
      }
    } else if (shopLogoPickerState is ShopLogoPickerStateLoaded) {
      if (loaded != null) {
        loaded(shopLogoPickerState.logo);
      } else if (orElse != null) {
        orElse(shopLogoPickerState);
      }
    } else if (shopLogoPickerState is ShopLogoPickerStateError) {
      if (error != null) {
        error(shopLogoPickerState.failure);
      } else if (orElse != null) {
        orElse(shopLogoPickerState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(ShopLogo logo)? loaded,
    R Function(ImageFailure failure)? error,
    R Function(ShopLogoPickerState shopLogoPickerState)? orElse,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is ShopLogoPickerStateInitial) {
      return initial != null ? initial() : orElse?.call(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateLoading) {
      return loading != null ? loading() : orElse?.call(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateLoaded) {
      return loaded != null
          ? loaded(shopLogoPickerState.logo)
          : orElse?.call(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateError) {
      return error != null
          ? error(shopLogoPickerState.failure)
          : orElse?.call(shopLogoPickerState);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ShopLogoPickerStateInitial initial) initial,
    required R Function(ShopLogoPickerStateLoading loading) loading,
    required R Function(ShopLogoPickerStateLoaded loaded) loaded,
    required R Function(ShopLogoPickerStateError error) error,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is ShopLogoPickerStateInitial) {
      return initial(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateLoading) {
      return loading(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateLoaded) {
      return loaded(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateError) {
      return error(shopLogoPickerState);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ShopLogoPickerStateInitial initial)? initial,
    R Function(ShopLogoPickerStateLoading loading)? loading,
    R Function(ShopLogoPickerStateLoaded loaded)? loaded,
    R Function(ShopLogoPickerStateError error)? error,
    required R Function(ShopLogoPickerState shopLogoPickerState) orElse,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is ShopLogoPickerStateInitial) {
      return initial != null
          ? initial(shopLogoPickerState)
          : orElse(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateLoading) {
      return loading != null
          ? loading(shopLogoPickerState)
          : orElse(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateLoaded) {
      return loaded != null
          ? loaded(shopLogoPickerState)
          : orElse(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateError) {
      return error != null
          ? error(shopLogoPickerState)
          : orElse(shopLogoPickerState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ShopLogoPickerStateInitial initial)? initial,
    void Function(ShopLogoPickerStateLoading loading)? loading,
    void Function(ShopLogoPickerStateLoaded loaded)? loaded,
    void Function(ShopLogoPickerStateError error)? error,
    void Function(ShopLogoPickerState shopLogoPickerState)? orElse,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is ShopLogoPickerStateInitial) {
      if (initial != null) {
        initial(shopLogoPickerState);
      } else if (orElse != null) {
        orElse(shopLogoPickerState);
      }
    } else if (shopLogoPickerState is ShopLogoPickerStateLoading) {
      if (loading != null) {
        loading(shopLogoPickerState);
      } else if (orElse != null) {
        orElse(shopLogoPickerState);
      }
    } else if (shopLogoPickerState is ShopLogoPickerStateLoaded) {
      if (loaded != null) {
        loaded(shopLogoPickerState);
      } else if (orElse != null) {
        orElse(shopLogoPickerState);
      }
    } else if (shopLogoPickerState is ShopLogoPickerStateError) {
      if (error != null) {
        error(shopLogoPickerState);
      } else if (orElse != null) {
        orElse(shopLogoPickerState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ShopLogoPickerStateInitial initial)? initial,
    R Function(ShopLogoPickerStateLoading loading)? loading,
    R Function(ShopLogoPickerStateLoaded loaded)? loaded,
    R Function(ShopLogoPickerStateError error)? error,
    R Function(ShopLogoPickerState shopLogoPickerState)? orElse,
  }) {
    final shopLogoPickerState = this;
    if (shopLogoPickerState is ShopLogoPickerStateInitial) {
      return initial != null
          ? initial(shopLogoPickerState)
          : orElse?.call(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateLoading) {
      return loading != null
          ? loading(shopLogoPickerState)
          : orElse?.call(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateLoaded) {
      return loaded != null
          ? loaded(shopLogoPickerState)
          : orElse?.call(shopLogoPickerState);
    } else if (shopLogoPickerState is ShopLogoPickerStateError) {
      return error != null
          ? error(shopLogoPickerState)
          : orElse?.call(shopLogoPickerState);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ShopLogoPickerStateInitial] : [ShopLogoPickerState]) initial){}
///
/// with data equality
class ShopLogoPickerStateInitial extends ShopLogoPickerState
    with EquatableMixin {
  const ShopLogoPickerStateInitial() : super._internal();

  @override
  String toString() => 'ShopLogoPickerState.initial()';

  @override
  List<Object?> get props => [];
}

/// (([ShopLogoPickerStateLoading] : [ShopLogoPickerState]) loading){}
///
/// with data equality
class ShopLogoPickerStateLoading extends ShopLogoPickerState
    with EquatableMixin {
  const ShopLogoPickerStateLoading() : super._internal();

  @override
  String toString() => 'ShopLogoPickerState.loading()';

  @override
  List<Object?> get props => [];
}

/// (([ShopLogoPickerStateLoaded] : [ShopLogoPickerState]) loaded){[ShopLogo] logo}
///
/// with data equality
class ShopLogoPickerStateLoaded extends ShopLogoPickerState
    with EquatableMixin {
  const ShopLogoPickerStateLoaded({
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

/// (([ShopLogoPickerStateError] : [ShopLogoPickerState]) error){[ImageFailure] failure}
///
/// with data equality
class ShopLogoPickerStateError extends ShopLogoPickerState with EquatableMixin {
  const ShopLogoPickerStateError({
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
