// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_registration_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [ShopRegistrationEvent] {
///
/// ([ShopRegistrationEventFormSaved] formSaved){[ShopForm] shopForm} with data equality
///
/// ([ShopRegistrationEventLocationSaved] locationSaved){[Location] location} with data equality
///
/// ([ShopRegistrationEventWeekSaved] weekSaved){[Week] week} with data equality
///
/// ([ShopRegistrationEventLogoSaved] logoSaved){[ShopLogo] logo} with data equality
///
/// ([ShopRegistrationEventShopSaved] shopSaved){} with data equality
///
/// }
@SealedManifest(_ShopRegistrationEvent)
abstract class ShopRegistrationEvent {
  const ShopRegistrationEvent._internal();

  const factory ShopRegistrationEvent.formSaved({
    required ShopForm shopForm,
  }) = ShopRegistrationEventFormSaved;

  const factory ShopRegistrationEvent.locationSaved({
    required Location location,
  }) = ShopRegistrationEventLocationSaved;

  const factory ShopRegistrationEvent.weekSaved({
    required Week week,
  }) = ShopRegistrationEventWeekSaved;

  const factory ShopRegistrationEvent.logoSaved({
    required ShopLogo logo,
  }) = ShopRegistrationEventLogoSaved;

  const factory ShopRegistrationEvent.shopSaved() =
      ShopRegistrationEventShopSaved;

  bool get isFormSaved => this is ShopRegistrationEventFormSaved;

  bool get isLocationSaved => this is ShopRegistrationEventLocationSaved;

  bool get isWeekSaved => this is ShopRegistrationEventWeekSaved;

  bool get isLogoSaved => this is ShopRegistrationEventLogoSaved;

  bool get isShopSaved => this is ShopRegistrationEventShopSaved;

  ShopRegistrationEventFormSaved get asFormSaved =>
      this as ShopRegistrationEventFormSaved;

  ShopRegistrationEventLocationSaved get asLocationSaved =>
      this as ShopRegistrationEventLocationSaved;

  ShopRegistrationEventWeekSaved get asWeekSaved =>
      this as ShopRegistrationEventWeekSaved;

  ShopRegistrationEventLogoSaved get asLogoSaved =>
      this as ShopRegistrationEventLogoSaved;

  ShopRegistrationEventShopSaved get asShopSaved =>
      this as ShopRegistrationEventShopSaved;

  ShopRegistrationEventFormSaved? get asFormSavedOrNull {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is ShopRegistrationEventFormSaved
        ? shopRegistrationEvent
        : null;
  }

  ShopRegistrationEventLocationSaved? get asLocationSavedOrNull {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is ShopRegistrationEventLocationSaved
        ? shopRegistrationEvent
        : null;
  }

  ShopRegistrationEventWeekSaved? get asWeekSavedOrNull {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is ShopRegistrationEventWeekSaved
        ? shopRegistrationEvent
        : null;
  }

  ShopRegistrationEventLogoSaved? get asLogoSavedOrNull {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is ShopRegistrationEventLogoSaved
        ? shopRegistrationEvent
        : null;
  }

  ShopRegistrationEventShopSaved? get asShopSavedOrNull {
    final shopRegistrationEvent = this;
    return shopRegistrationEvent is ShopRegistrationEventShopSaved
        ? shopRegistrationEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(ShopForm shopForm) formSaved,
    required R Function(Location location) locationSaved,
    required R Function(Week week) weekSaved,
    required R Function(ShopLogo logo) logoSaved,
    required R Function() shopSaved,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is ShopRegistrationEventFormSaved) {
      return formSaved(shopRegistrationEvent.shopForm);
    } else if (shopRegistrationEvent is ShopRegistrationEventLocationSaved) {
      return locationSaved(shopRegistrationEvent.location);
    } else if (shopRegistrationEvent is ShopRegistrationEventWeekSaved) {
      return weekSaved(shopRegistrationEvent.week);
    } else if (shopRegistrationEvent is ShopRegistrationEventLogoSaved) {
      return logoSaved(shopRegistrationEvent.logo);
    } else if (shopRegistrationEvent is ShopRegistrationEventShopSaved) {
      return shopSaved();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(ShopForm shopForm)? formSaved,
    R Function(Location location)? locationSaved,
    R Function(Week week)? weekSaved,
    R Function(ShopLogo logo)? logoSaved,
    R Function()? shopSaved,
    required R Function(ShopRegistrationEvent shopRegistrationEvent) orElse,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is ShopRegistrationEventFormSaved) {
      return formSaved != null
          ? formSaved(shopRegistrationEvent.shopForm)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventLocationSaved) {
      return locationSaved != null
          ? locationSaved(shopRegistrationEvent.location)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventWeekSaved) {
      return weekSaved != null
          ? weekSaved(shopRegistrationEvent.week)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventLogoSaved) {
      return logoSaved != null
          ? logoSaved(shopRegistrationEvent.logo)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventShopSaved) {
      return shopSaved != null ? shopSaved() : orElse(shopRegistrationEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(ShopForm shopForm)? formSaved,
    void Function(Location location)? locationSaved,
    void Function(Week week)? weekSaved,
    void Function(ShopLogo logo)? logoSaved,
    void Function()? shopSaved,
    void Function(ShopRegistrationEvent shopRegistrationEvent)? orElse,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is ShopRegistrationEventFormSaved) {
      if (formSaved != null) {
        formSaved(shopRegistrationEvent.shopForm);
      } else if (orElse != null) {
        orElse(shopRegistrationEvent);
      }
    } else if (shopRegistrationEvent is ShopRegistrationEventLocationSaved) {
      if (locationSaved != null) {
        locationSaved(shopRegistrationEvent.location);
      } else if (orElse != null) {
        orElse(shopRegistrationEvent);
      }
    } else if (shopRegistrationEvent is ShopRegistrationEventWeekSaved) {
      if (weekSaved != null) {
        weekSaved(shopRegistrationEvent.week);
      } else if (orElse != null) {
        orElse(shopRegistrationEvent);
      }
    } else if (shopRegistrationEvent is ShopRegistrationEventLogoSaved) {
      if (logoSaved != null) {
        logoSaved(shopRegistrationEvent.logo);
      } else if (orElse != null) {
        orElse(shopRegistrationEvent);
      }
    } else if (shopRegistrationEvent is ShopRegistrationEventShopSaved) {
      if (shopSaved != null) {
        shopSaved();
      } else if (orElse != null) {
        orElse(shopRegistrationEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(ShopForm shopForm)? formSaved,
    R Function(Location location)? locationSaved,
    R Function(Week week)? weekSaved,
    R Function(ShopLogo logo)? logoSaved,
    R Function()? shopSaved,
    R Function(ShopRegistrationEvent shopRegistrationEvent)? orElse,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is ShopRegistrationEventFormSaved) {
      return formSaved != null
          ? formSaved(shopRegistrationEvent.shopForm)
          : orElse?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventLocationSaved) {
      return locationSaved != null
          ? locationSaved(shopRegistrationEvent.location)
          : orElse?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventWeekSaved) {
      return weekSaved != null
          ? weekSaved(shopRegistrationEvent.week)
          : orElse?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventLogoSaved) {
      return logoSaved != null
          ? logoSaved(shopRegistrationEvent.logo)
          : orElse?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventShopSaved) {
      return shopSaved != null
          ? shopSaved()
          : orElse?.call(shopRegistrationEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ShopRegistrationEventFormSaved formSaved) formSaved,
    required R Function(ShopRegistrationEventLocationSaved locationSaved)
        locationSaved,
    required R Function(ShopRegistrationEventWeekSaved weekSaved) weekSaved,
    required R Function(ShopRegistrationEventLogoSaved logoSaved) logoSaved,
    required R Function(ShopRegistrationEventShopSaved shopSaved) shopSaved,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is ShopRegistrationEventFormSaved) {
      return formSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventLocationSaved) {
      return locationSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventWeekSaved) {
      return weekSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventLogoSaved) {
      return logoSaved(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventShopSaved) {
      return shopSaved(shopRegistrationEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ShopRegistrationEventFormSaved formSaved)? formSaved,
    R Function(ShopRegistrationEventLocationSaved locationSaved)? locationSaved,
    R Function(ShopRegistrationEventWeekSaved weekSaved)? weekSaved,
    R Function(ShopRegistrationEventLogoSaved logoSaved)? logoSaved,
    R Function(ShopRegistrationEventShopSaved shopSaved)? shopSaved,
    required R Function(ShopRegistrationEvent shopRegistrationEvent) orElse,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is ShopRegistrationEventFormSaved) {
      return formSaved != null
          ? formSaved(shopRegistrationEvent)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventLocationSaved) {
      return locationSaved != null
          ? locationSaved(shopRegistrationEvent)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventWeekSaved) {
      return weekSaved != null
          ? weekSaved(shopRegistrationEvent)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventLogoSaved) {
      return logoSaved != null
          ? logoSaved(shopRegistrationEvent)
          : orElse(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventShopSaved) {
      return shopSaved != null
          ? shopSaved(shopRegistrationEvent)
          : orElse(shopRegistrationEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ShopRegistrationEventFormSaved formSaved)? formSaved,
    void Function(ShopRegistrationEventLocationSaved locationSaved)?
        locationSaved,
    void Function(ShopRegistrationEventWeekSaved weekSaved)? weekSaved,
    void Function(ShopRegistrationEventLogoSaved logoSaved)? logoSaved,
    void Function(ShopRegistrationEventShopSaved shopSaved)? shopSaved,
    void Function(ShopRegistrationEvent shopRegistrationEvent)? orElse,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is ShopRegistrationEventFormSaved) {
      if (formSaved != null) {
        formSaved(shopRegistrationEvent);
      } else if (orElse != null) {
        orElse(shopRegistrationEvent);
      }
    } else if (shopRegistrationEvent is ShopRegistrationEventLocationSaved) {
      if (locationSaved != null) {
        locationSaved(shopRegistrationEvent);
      } else if (orElse != null) {
        orElse(shopRegistrationEvent);
      }
    } else if (shopRegistrationEvent is ShopRegistrationEventWeekSaved) {
      if (weekSaved != null) {
        weekSaved(shopRegistrationEvent);
      } else if (orElse != null) {
        orElse(shopRegistrationEvent);
      }
    } else if (shopRegistrationEvent is ShopRegistrationEventLogoSaved) {
      if (logoSaved != null) {
        logoSaved(shopRegistrationEvent);
      } else if (orElse != null) {
        orElse(shopRegistrationEvent);
      }
    } else if (shopRegistrationEvent is ShopRegistrationEventShopSaved) {
      if (shopSaved != null) {
        shopSaved(shopRegistrationEvent);
      } else if (orElse != null) {
        orElse(shopRegistrationEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ShopRegistrationEventFormSaved formSaved)? formSaved,
    R Function(ShopRegistrationEventLocationSaved locationSaved)? locationSaved,
    R Function(ShopRegistrationEventWeekSaved weekSaved)? weekSaved,
    R Function(ShopRegistrationEventLogoSaved logoSaved)? logoSaved,
    R Function(ShopRegistrationEventShopSaved shopSaved)? shopSaved,
    R Function(ShopRegistrationEvent shopRegistrationEvent)? orElse,
  }) {
    final shopRegistrationEvent = this;
    if (shopRegistrationEvent is ShopRegistrationEventFormSaved) {
      return formSaved != null
          ? formSaved(shopRegistrationEvent)
          : orElse?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventLocationSaved) {
      return locationSaved != null
          ? locationSaved(shopRegistrationEvent)
          : orElse?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventWeekSaved) {
      return weekSaved != null
          ? weekSaved(shopRegistrationEvent)
          : orElse?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventLogoSaved) {
      return logoSaved != null
          ? logoSaved(shopRegistrationEvent)
          : orElse?.call(shopRegistrationEvent);
    } else if (shopRegistrationEvent is ShopRegistrationEventShopSaved) {
      return shopSaved != null
          ? shopSaved(shopRegistrationEvent)
          : orElse?.call(shopRegistrationEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ShopRegistrationEventFormSaved] : [ShopRegistrationEvent]) formSaved){[ShopForm] shopForm}
///
/// with data equality
class ShopRegistrationEventFormSaved extends ShopRegistrationEvent
    with EquatableMixin {
  const ShopRegistrationEventFormSaved({
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

/// (([ShopRegistrationEventLocationSaved] : [ShopRegistrationEvent]) locationSaved){[Location] location}
///
/// with data equality
class ShopRegistrationEventLocationSaved extends ShopRegistrationEvent
    with EquatableMixin {
  const ShopRegistrationEventLocationSaved({
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

/// (([ShopRegistrationEventWeekSaved] : [ShopRegistrationEvent]) weekSaved){[Week] week}
///
/// with data equality
class ShopRegistrationEventWeekSaved extends ShopRegistrationEvent
    with EquatableMixin {
  const ShopRegistrationEventWeekSaved({
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

/// (([ShopRegistrationEventLogoSaved] : [ShopRegistrationEvent]) logoSaved){[ShopLogo] logo}
///
/// with data equality
class ShopRegistrationEventLogoSaved extends ShopRegistrationEvent
    with EquatableMixin {
  const ShopRegistrationEventLogoSaved({
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

/// (([ShopRegistrationEventShopSaved] : [ShopRegistrationEvent]) shopSaved){}
///
/// with data equality
class ShopRegistrationEventShopSaved extends ShopRegistrationEvent
    with EquatableMixin {
  const ShopRegistrationEventShopSaved() : super._internal();

  @override
  String toString() => 'ShopRegistrationEvent.shopSaved()';

  @override
  List<Object?> get props => [];
}
