// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_registration_bloc.dart';

// **************************************************************************
// Generator: super_enum_sealed_generators
// **************************************************************************

// ignore_for_file: unused_element, unused_field

// Migration guide for ShopRegistrationEvent:
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
// abstract class _ShopRegistrationEvent
// {
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Initial')
// void initial();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('FormSaved')
// void formSaved();
// }

/// [ShopRegistrationEvent] {
///
/// ([Initial] initial){} with data equality with wrap
///
/// ([FormSaved] formSaved){} with data equality with wrap
///
/// }
@immutable
abstract class ShopRegistrationEvent {
  const ShopRegistrationEvent._internal();

  const factory ShopRegistrationEvent.initial() = Initial;

  const factory ShopRegistrationEvent.formSaved() = FormSaved;

  bool isInitial() => this is Initial;

  bool isFormSaved() => this is FormSaved;

  Initial asInitial() => this as Initial;

  FormSaved asFormSaved() => this as FormSaved;

  Initial? asInitialOrNull() {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is Initial ? shopRegistrationEvent : null;
  }

  FormSaved? asFormSavedOrNull() {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is FormSaved ? shopRegistrationEvent : null;
  }

  R when<R extends Object?>({
    required R Function() initial,
    required R Function() formSaved,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is Initial) {
      return initial();
    } else if (shopRegistrationEvent is FormSaved) {
      return formSaved();
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function()? initial,
    R Function()? formSaved,
    required R Function(ShopRegistrationEvent shopRegistrationEvent) orElse,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is Initial) {
      return initial != null ? initial() : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is FormSaved) {
      return formSaved != null ? formSaved() : orElse(shopRegistrationEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function()? initial,
    R Function()? formSaved,
    required R orDefault,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is Initial) {
      return initial != null ? initial() : orDefault;
    } else if (shopRegistrationEvent is FormSaved) {
      return formSaved != null ? formSaved() : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? initial,
    R Function()? formSaved,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is Initial) {
      return initial?.call();
    } else if (shopRegistrationEvent is FormSaved) {
      return formSaved?.call();
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function()? initial,
    R Function()? formSaved,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is Initial && initial != null) {
      return initial();
    } else if (shopRegistrationEvent is FormSaved && formSaved != null) {
      return formSaved();
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function()? initial,
    void Function()? formSaved,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is Initial) {
      initial?.call();
    } else if (shopRegistrationEvent is FormSaved) {
      formSaved?.call();
    } else {
      throw AssertionError();
    }
  }
}

/// (([Initial] : [ShopRegistrationEvent]) initial){}
///
/// with data equality
///
/// with wrap
@immutable
class Initial extends ShopRegistrationEvent with EquatableMixin {
  const Initial() : super._internal();

  @override
  String toString() => 'ShopRegistrationEvent.initial()';

  @override
  List<Object?> get props => [];
}

/// (([FormSaved] : [ShopRegistrationEvent]) formSaved){}
///
/// with data equality
///
/// with wrap
@immutable
class FormSaved extends ShopRegistrationEvent with EquatableMixin {
  const FormSaved() : super._internal();

  @override
  String toString() => 'ShopRegistrationEvent.formSaved()';

  @override
  List<Object?> get props => [];
}
