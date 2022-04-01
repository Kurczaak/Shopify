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
// @WithEquality(Equality.data)
// @WithName('FormSaved')
// void formSaved(ShopForm shopForm);
//
// @WithEquality(Equality.data)
// @WithName('LocationSaved')
// void locationSaved(Location location);
//
// @WithEquality(Equality.data)
// @WithName('WeekSaved')
// void weekSaved(Week week);
//
// @WithEquality(Equality.data)
// @WithName('LogoSaved')
// void logoSaved(ShopLogo logo);
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('ShopSaved')
// void shopSaved();
// }

/// [ShopRegistrationEvent] {
///
/// ([FormSaved] formSaved){[ShopForm] shopForm} with data equality
///
/// ([LocationSaved] locationSaved){[Location] location} with data equality
///
/// ([WeekSaved] weekSaved){[Week] week} with data equality
///
/// ([LogoSaved] logoSaved){[ShopLogo] logo} with data equality
///
/// ([ShopSaved] shopSaved){} with data equality with wrap
///
/// }
@immutable
abstract class ShopRegistrationEvent {
  const ShopRegistrationEvent._internal();

  const factory ShopRegistrationEvent.formSaved({
    required ShopForm shopForm,
  }) = FormSaved;

  const factory ShopRegistrationEvent.locationSaved({
    required Location location,
  }) = LocationSaved;

  const factory ShopRegistrationEvent.weekSaved({
    required Week week,
  }) = WeekSaved;

  const factory ShopRegistrationEvent.logoSaved({
    required ShopLogo logo,
  }) = LogoSaved;

  const factory ShopRegistrationEvent.shopSaved() = ShopSaved;

  bool isFormSaved() => this is FormSaved;

  bool isLocationSaved() => this is LocationSaved;

  bool isWeekSaved() => this is WeekSaved;

  bool isLogoSaved() => this is LogoSaved;

  bool isShopSaved() => this is ShopSaved;

  FormSaved asFormSaved() => this as FormSaved;

  LocationSaved asLocationSaved() => this as LocationSaved;

  WeekSaved asWeekSaved() => this as WeekSaved;

  LogoSaved asLogoSaved() => this as LogoSaved;

  ShopSaved asShopSaved() => this as ShopSaved;

  FormSaved? asFormSavedOrNull() {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is FormSaved ? shopRegistrationEvent : null;
  }

  LocationSaved? asLocationSavedOrNull() {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is LocationSaved
        ? shopRegistrationEvent
        : null;
  }

  WeekSaved? asWeekSavedOrNull() {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is WeekSaved ? shopRegistrationEvent : null;
  }

  LogoSaved? asLogoSavedOrNull() {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is LogoSaved ? shopRegistrationEvent : null;
  }

  ShopSaved? asShopSavedOrNull() {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is ShopSaved ? shopRegistrationEvent : null;
  }

  R when<R extends Object?>({
    required R Function(FormSaved formSaved) formSaved,
    required R Function(LocationSaved locationSaved) locationSaved,
    required R Function(WeekSaved weekSaved) weekSaved,
    required R Function(LogoSaved logoSaved) logoSaved,
    required R Function() shopSaved,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is FormSaved) {
      return formSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is LocationSaved) {
      return locationSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is WeekSaved) {
      return weekSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is LogoSaved) {
      return logoSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopSaved) {
      return shopSaved();
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function(FormSaved formSaved)? formSaved,
    R Function(LocationSaved locationSaved)? locationSaved,
    R Function(WeekSaved weekSaved)? weekSaved,
    R Function(LogoSaved logoSaved)? logoSaved,
    R Function()? shopSaved,
    required R Function(ShopRegistrationEvent shopRegistrationEvent) orElse,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is FormSaved) {
      return formSaved != null
          ? formSaved(shopRegistrationEvent)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is LocationSaved) {
      return locationSaved != null
          ? locationSaved(shopRegistrationEvent)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is WeekSaved) {
      return weekSaved != null
          ? weekSaved(shopRegistrationEvent)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is LogoSaved) {
      return logoSaved != null
          ? logoSaved(shopRegistrationEvent)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopSaved) {
      return shopSaved != null ? shopSaved() : orElse(shopRegistrationEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function(FormSaved formSaved)? formSaved,
    R Function(LocationSaved locationSaved)? locationSaved,
    R Function(WeekSaved weekSaved)? weekSaved,
    R Function(LogoSaved logoSaved)? logoSaved,
    R Function()? shopSaved,
    required R orDefault,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is FormSaved) {
      return formSaved != null ? formSaved(shopRegistrationEvent) : orDefault;
    } else if (shopRegistrationEvent is LocationSaved) {
      return locationSaved != null
          ? locationSaved(shopRegistrationEvent)
          : orDefault;
    } else if (shopRegistrationEvent is WeekSaved) {
      return weekSaved != null ? weekSaved(shopRegistrationEvent) : orDefault;
    } else if (shopRegistrationEvent is LogoSaved) {
      return logoSaved != null ? logoSaved(shopRegistrationEvent) : orDefault;
    } else if (shopRegistrationEvent is ShopSaved) {
      return shopSaved != null ? shopSaved() : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(FormSaved formSaved)? formSaved,
    R Function(LocationSaved locationSaved)? locationSaved,
    R Function(WeekSaved weekSaved)? weekSaved,
    R Function(LogoSaved logoSaved)? logoSaved,
    R Function()? shopSaved,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is FormSaved) {
      return formSaved?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is LocationSaved) {
      return locationSaved?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is WeekSaved) {
      return weekSaved?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is LogoSaved) {
      return logoSaved?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopSaved) {
      return shopSaved?.call();
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function(FormSaved formSaved)? formSaved,
    R Function(LocationSaved locationSaved)? locationSaved,
    R Function(WeekSaved weekSaved)? weekSaved,
    R Function(LogoSaved logoSaved)? logoSaved,
    R Function()? shopSaved,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is FormSaved && formSaved != null) {
      return formSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is LocationSaved &&
        locationSaved != null) {
      return locationSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is WeekSaved && weekSaved != null) {
      return weekSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is LogoSaved && logoSaved != null) {
      return logoSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopSaved && shopSaved != null) {
      return shopSaved();
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function(FormSaved formSaved)? formSaved,
    void Function(LocationSaved locationSaved)? locationSaved,
    void Function(WeekSaved weekSaved)? weekSaved,
    void Function(LogoSaved logoSaved)? logoSaved,
    void Function()? shopSaved,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is FormSaved) {
      formSaved?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is LocationSaved) {
      locationSaved?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is WeekSaved) {
      weekSaved?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is LogoSaved) {
      logoSaved?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopSaved) {
      shopSaved?.call();
    } else {
      throw AssertionError();
    }
  }
}

/// (([FormSaved] : [ShopRegistrationEvent]) formSaved){[ShopForm] shopForm}
///
/// with data equality
@immutable
class FormSaved extends ShopRegistrationEvent with EquatableMixin {
  const FormSaved({
    required this.shopForm,
  }) : super._internal();

  final ShopForm shopForm;

  @override
  String toString() => 'ShopRegistrationEvent.formSaved(shopForm: $shopForm)';

  @override
  List<Object?> get props => [
        shopForm,
      ];
}

/// (([LocationSaved] : [ShopRegistrationEvent]) locationSaved){[Location] location}
///
/// with data equality
@immutable
class LocationSaved extends ShopRegistrationEvent with EquatableMixin {
  const LocationSaved({
    required this.location,
  }) : super._internal();

  final Location location;

  @override
  String toString() =>
      'ShopRegistrationEvent.locationSaved(location: $location)';

  @override
  List<Object?> get props => [
        location,
      ];
}

/// (([WeekSaved] : [ShopRegistrationEvent]) weekSaved){[Week] week}
///
/// with data equality
@immutable
class WeekSaved extends ShopRegistrationEvent with EquatableMixin {
  const WeekSaved({
    required this.week,
  }) : super._internal();

  final Week week;

  @override
  String toString() => 'ShopRegistrationEvent.weekSaved(week: $week)';

  @override
  List<Object?> get props => [
        week,
      ];
}

/// (([LogoSaved] : [ShopRegistrationEvent]) logoSaved){[ShopLogo] logo}
///
/// with data equality
@immutable
class LogoSaved extends ShopRegistrationEvent with EquatableMixin {
  const LogoSaved({
    required this.logo,
  }) : super._internal();

  final ShopLogo logo;

  @override
  String toString() => 'ShopRegistrationEvent.logoSaved(logo: $logo)';

  @override
  List<Object?> get props => [
        logo,
      ];
}

/// (([ShopSaved] : [ShopRegistrationEvent]) shopSaved){}
///
/// with data equality
///
/// with wrap
@immutable
class ShopSaved extends ShopRegistrationEvent with EquatableMixin {
  const ShopSaved() : super._internal();

  @override
  String toString() => 'ShopRegistrationEvent.shopSaved()';

  @override
  List<Object?> get props => [];
}
