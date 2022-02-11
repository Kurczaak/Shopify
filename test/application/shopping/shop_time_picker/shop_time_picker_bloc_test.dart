import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:meta/meta.dart';

import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:shopify_manager/domain/shopping/time/day.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';
import 'package:shopify_manager/domain/shopping/time/week.dart';
import 'package:shopify_manager/presentation/register_shop/opening_hours/misc/day_presentation_classes.dart';

void main() {
  group('mondayChanged', () {
    final changedMonday = Day.empty(DayName.monday).copyWith(
        openingInterval:
            TimeInterval(Hour.fromInt(12, 0), Hour.fromInt(15, 0)));
    final changedWeek = Week.empty().copyWith(monday: changedMonday);
    final primitiveMonday = DayPrimitive.fromDomain(changedMonday);

    testDayIntergity('should emit state with edited monday',
        ShopTimePickerEvent.mondayChanged(primitiveMonday), changedWeek);

    final incorrectTimeInterval =
        TimeIntervalPrimitive.fullHours(openingHour: 22, closingHour: 21);
    final incorrectMonday =
        primitiveMonday.copyWith(timeInterval: incorrectTimeInterval);
    final incorrectWeek =
        Week.empty().copyWith(monday: incorrectMonday.toDomain());

    testChangedToIncorrectTimeInterval(
      'should emit state showing errors when incorrect time interval is given',
      ShopTimePickerEvent.mondayChanged(incorrectMonday),
      incorrectWeek,
    );

    testPersistingError(
        'should emit state showing errors when incorrect time interval is given by different day',
        correctDay: changedMonday,
        correctEvent: ShopTimePickerEvent.mondayChanged(primitiveMonday));

    testHideErrors(
      'should set showErrors back to false when correct week is given',
      correctDay: changedMonday,
      correctEvent: ShopTimePickerEvent.mondayChanged(primitiveMonday),
    );
  });

  group('tuesdayChanged', () {
    final changedTuesday = Day.empty(DayName.tuesday).copyWith(
        openingInterval:
            TimeInterval(Hour.fromInt(12, 0), Hour.fromInt(15, 0)));
    final changedWeek = Week.empty().copyWith(tuesday: changedTuesday);
    final primitiveTuesday = DayPrimitive.fromDomain(changedTuesday);

    testDayIntergity('should emit state with edited tuesday',
        ShopTimePickerEvent.tuesdayChanged(primitiveTuesday), changedWeek);

    final incorrectTimeInterval =
        TimeIntervalPrimitive.fullHours(openingHour: 22, closingHour: 21);
    final incorrectTuesday =
        primitiveTuesday.copyWith(timeInterval: incorrectTimeInterval);
    final incorrectWeek =
        Week.empty().copyWith(tuesday: incorrectTuesday.toDomain());

    testChangedToIncorrectTimeInterval(
      'should emit state showing errors when incorrect time interval is given',
      ShopTimePickerEvent.tuesdayChanged(incorrectTuesday),
      incorrectWeek,
    );

    testPersistingError(
        'should emit state showing errors when incorrect time interval is given by different day',
        correctDay: changedTuesday,
        correctEvent: ShopTimePickerEvent.tuesdayChanged(primitiveTuesday));

    testHideErrors(
      'should set showErrors back to false when correct week is given',
      correctDay: changedTuesday,
      correctEvent: ShopTimePickerEvent.tuesdayChanged(primitiveTuesday),
    );
  });

  group('wednesdayChanged', () {
    final changedWednesday = Day.empty(DayName.wednesday).copyWith(
        openingInterval:
            TimeInterval(Hour.fromInt(12, 0), Hour.fromInt(15, 0)));
    final changedWeek = Week.empty().copyWith(wednesday: changedWednesday);
    final primitiveWednesday = DayPrimitive.fromDomain(changedWednesday);

    testDayIntergity('should emit state with edited wednesday',
        ShopTimePickerEvent.wednesdayChanged(primitiveWednesday), changedWeek);

    final incorrectTimeInterval =
        TimeIntervalPrimitive.fullHours(openingHour: 22, closingHour: 21);
    final incorrectWednesday =
        primitiveWednesday.copyWith(timeInterval: incorrectTimeInterval);
    final incorrectWeek =
        Week.empty().copyWith(wednesday: incorrectWednesday.toDomain());

    testChangedToIncorrectTimeInterval(
      'should emit state showing errors when incorrect time interval is given',
      ShopTimePickerEvent.wednesdayChanged(incorrectWednesday),
      incorrectWeek,
    );

    testPersistingError(
        'should emit state showing errors when incorrect time interval is given by different day',
        correctDay: changedWednesday,
        correctEvent: ShopTimePickerEvent.wednesdayChanged(primitiveWednesday));

    testHideErrors(
      'should set showErrors back to false when correct week is given',
      correctDay: changedWednesday,
      correctEvent: ShopTimePickerEvent.wednesdayChanged(primitiveWednesday),
    );
  });

  group('thursdayChanged', () {
    final changedThursday = Day.empty(DayName.thursday).copyWith(
        openingInterval:
            TimeInterval(Hour.fromInt(12, 0), Hour.fromInt(15, 0)));
    final changedWeek = Week.empty().copyWith(thursday: changedThursday);
    final primitiveThursday = DayPrimitive.fromDomain(changedThursday);

    testDayIntergity('should emit state with edited thursday',
        ShopTimePickerEvent.thursdayChanged(primitiveThursday), changedWeek);

    final incorrectTimeInterval =
        TimeIntervalPrimitive.fullHours(openingHour: 22, closingHour: 21);
    final incorrectThursday =
        primitiveThursday.copyWith(timeInterval: incorrectTimeInterval);
    final incorrectWeek =
        Week.empty().copyWith(thursday: incorrectThursday.toDomain());

    testChangedToIncorrectTimeInterval(
      'should emit state showing errors when incorrect time interval is given',
      ShopTimePickerEvent.thursdayChanged(incorrectThursday),
      incorrectWeek,
    );

    testPersistingError(
        'should emit state showing errors when incorrect time interval is given by different day',
        correctDay: changedThursday,
        correctEvent: ShopTimePickerEvent.thursdayChanged(primitiveThursday));

    testHideErrors(
      'should set showErrors back to false when correct week is given',
      correctDay: changedThursday,
      correctEvent: ShopTimePickerEvent.thursdayChanged(primitiveThursday),
    );
  });

  group('fridayChanged', () {
    final changedFriday = Day.empty(DayName.friday).copyWith(
        openingInterval:
            TimeInterval(Hour.fromInt(12, 0), Hour.fromInt(15, 0)));
    final changedWeek = Week.empty().copyWith(friday: changedFriday);
    final primitiveFriday = DayPrimitive.fromDomain(changedFriday);

    testDayIntergity('should emit state with edited friday',
        ShopTimePickerEvent.fridayChanged(primitiveFriday), changedWeek);

    final incorrectTimeInterval =
        TimeIntervalPrimitive.fullHours(openingHour: 22, closingHour: 21);
    final incorrectFriday =
        primitiveFriday.copyWith(timeInterval: incorrectTimeInterval);
    final incorrectWeek =
        Week.empty().copyWith(friday: incorrectFriday.toDomain());

    testChangedToIncorrectTimeInterval(
      'should emit state showing errors when incorrect time interval is given',
      ShopTimePickerEvent.fridayChanged(incorrectFriday),
      incorrectWeek,
    );

    testPersistingError(
        'should emit state showing errors when incorrect time interval is given by different day',
        correctDay: changedFriday,
        correctEvent: ShopTimePickerEvent.fridayChanged(primitiveFriday));

    testHideErrors(
      'should set showErrors back to false when correct week is given',
      correctDay: changedFriday,
      correctEvent: ShopTimePickerEvent.fridayChanged(primitiveFriday),
    );
  });

  group('saturdayChanged', () {
    final changedSaturday = Day.empty(DayName.saturday).copyWith(
        openingInterval:
            TimeInterval(Hour.fromInt(12, 0), Hour.fromInt(15, 0)));
    final changedWeek = Week.empty().copyWith(saturday: changedSaturday);
    final primitiveSaturday = DayPrimitive.fromDomain(changedSaturday);

    testDayIntergity('should emit state with edited saturday',
        ShopTimePickerEvent.saturdayChanged(primitiveSaturday), changedWeek);

    final incorrectTimeInterval =
        TimeIntervalPrimitive.fullHours(openingHour: 22, closingHour: 21);
    final incorrectSaturday =
        primitiveSaturday.copyWith(timeInterval: incorrectTimeInterval);
    final incorrectWeek =
        Week.empty().copyWith(saturday: incorrectSaturday.toDomain());

    testChangedToIncorrectTimeInterval(
      'should emit state showing errors when incorrect time interval is given',
      ShopTimePickerEvent.saturdayChanged(incorrectSaturday),
      incorrectWeek,
    );

    testPersistingError(
        'should emit state showing errors when incorrect time interval is given by different day',
        correctDay: changedSaturday,
        correctEvent: ShopTimePickerEvent.saturdayChanged(primitiveSaturday));

    testHideErrors(
      'should set showErrors back to false when correct week is given',
      correctDay: changedSaturday,
      correctEvent: ShopTimePickerEvent.saturdayChanged(primitiveSaturday),
    );
  });

  group('sundayChanged', () {
    final changedSunday = Day.empty(DayName.sunday).copyWith(
        openingInterval:
            TimeInterval(Hour.fromInt(12, 0), Hour.fromInt(15, 0)));
    final changedWeek = Week.empty().copyWith(sunday: changedSunday);
    final primitiveSunday = DayPrimitive.fromDomain(changedSunday);

    testDayIntergity('should emit state with edited sunday',
        ShopTimePickerEvent.sundayChanged(primitiveSunday), changedWeek);

    final incorrectTimeInterval =
        TimeIntervalPrimitive.fullHours(openingHour: 22, closingHour: 21);
    final incorrectSunday =
        primitiveSunday.copyWith(timeInterval: incorrectTimeInterval);
    final incorrectWeek =
        Week.empty().copyWith(sunday: incorrectSunday.toDomain());

    testChangedToIncorrectTimeInterval(
      'should emit state showing errors when incorrect time interval is given',
      ShopTimePickerEvent.sundayChanged(incorrectSunday),
      incorrectWeek,
    );

    testPersistingError(
        'should emit state showing errors when incorrect time interval is given by different day',
        correctDay: changedSunday,
        correctEvent: ShopTimePickerEvent.sundayChanged(primitiveSunday));

    testHideErrors(
      'should set showErrors back to false when correct week is given',
      correctDay: changedSunday,
      correctEvent: ShopTimePickerEvent.sundayChanged(primitiveSunday),
    );
  });
}

@isTest
void testDayIntergity(
    String description, ShopTimePickerEvent event, Week changedWeek) {
  blocTest(
    description,
    build: () => ShopTimePickerBloc(),
    act: (ShopTimePickerBloc bloc) => bloc.add(event),
    expect: () => [ShopTimePickerState.initial().copyWith(week: changedWeek)],
  );
}

@isTest
void testChangedToIncorrectTimeInterval(
  String description,
  ShopTimePickerEvent incorrectIntervalEvent,
  Week incorrectWeek,
) {
  blocTest(
    description,
    build: () => ShopTimePickerBloc(),
    act: (ShopTimePickerBloc bloc) => bloc.add(incorrectIntervalEvent),
    expect: () => [
      ShopTimePickerState.initial()
          .copyWith(week: incorrectWeek, showErrors: true)
    ],
  );
}

@isTest
void testPersistingError(
  String description, {
  required ShopTimePickerEvent correctEvent,
  required Day correctDay,
}) {
  final incorrectTimeInterval = TimeInterval.fullHours(22, 21);
  final incorrectMonday = Day.empty(DayName.monday)
      .copyWith(openingInterval: incorrectTimeInterval);
  var incorrectTuesday = Day.empty(DayName.tuesday)
      .copyWith(openingInterval: incorrectTimeInterval);
  var incorrectWednesday = Day.empty(DayName.wednesday)
      .copyWith(openingInterval: incorrectTimeInterval);
  var incorrectThursday = Day.empty(DayName.thursday)
      .copyWith(openingInterval: incorrectTimeInterval);
  var incorrectFriday = Day.empty(DayName.friday)
      .copyWith(openingInterval: incorrectTimeInterval);
  var incorrectSaturday = Day.empty(DayName.saturday)
      .copyWith(openingInterval: incorrectTimeInterval);
  var incorrectSunday = Day.empty(DayName.sunday)
      .copyWith(openingInterval: incorrectTimeInterval);
  final incorrectWeek = Week.empty().copyWith(
    monday: incorrectMonday,
    tuesday: incorrectTuesday,
    wednesday: incorrectWednesday,
    thursday: incorrectThursday,
    friday: incorrectFriday,
    saturday: incorrectSaturday,
    sunday: incorrectSunday,
  );

  final editedWeek = incorrectWeek.copyWith(
    monday: correctDay.day == DayName.monday ? correctDay : incorrectMonday,
    tuesday: correctDay.day == DayName.tuesday ? correctDay : incorrectTuesday,
    wednesday:
        correctDay.day == DayName.wednesday ? correctDay : incorrectWednesday,
    thursday:
        correctDay.day == DayName.thursday ? correctDay : incorrectThursday,
    friday: correctDay.day == DayName.friday ? correctDay : incorrectFriday,
    saturday:
        correctDay.day == DayName.saturday ? correctDay : incorrectSaturday,
    sunday: correctDay.day == DayName.sunday ? correctDay : incorrectSunday,
  );
  blocTest(
    description,
    build: () => ShopTimePickerBloc(),
    act: (ShopTimePickerBloc bloc) => bloc.add(correctEvent),
    seed: () => ShopTimePickerState.initial()
        .copyWith(week: incorrectWeek, showErrors: true),
    expect: () => [
      ShopTimePickerState.initial().copyWith(week: editedWeek, showErrors: true)
    ],
  );
}

@isTest
void testHideErrors(
  String description, {
  required ShopTimePickerEvent correctEvent,
  required Day correctDay,
}) {
  final incorrectTimeInterval = TimeInterval.fullHours(22, 21);
  final correctMonday = Day.empty(DayName.monday);
  var correctTuesday = Day.empty(DayName.tuesday);
  var correctWednesday = Day.empty(DayName.wednesday);
  var correctThursday = Day.empty(DayName.thursday);
  var correctFriday = Day.empty(DayName.friday);
  var correctSaturday = Day.empty(DayName.saturday);
  var correctSunday = Day.empty(DayName.sunday);

  final incorrectWeek = Week.empty().copyWith(
    monday: correctDay.day == DayName.monday
        ? correctDay.copyWith(openingInterval: incorrectTimeInterval)
        : correctMonday,
    tuesday: correctDay.day == DayName.tuesday
        ? correctDay.copyWith(openingInterval: incorrectTimeInterval)
        : correctTuesday,
    wednesday: correctDay.day == DayName.wednesday
        ? correctDay.copyWith(openingInterval: incorrectTimeInterval)
        : correctWednesday,
    thursday: correctDay.day == DayName.thursday
        ? correctDay.copyWith(openingInterval: incorrectTimeInterval)
        : correctThursday,
    friday: correctDay.day == DayName.friday
        ? correctDay.copyWith(openingInterval: incorrectTimeInterval)
        : correctFriday,
    saturday: correctDay.day == DayName.saturday
        ? correctDay.copyWith(openingInterval: incorrectTimeInterval)
        : correctSaturday,
    sunday: correctDay.day == DayName.sunday
        ? correctDay.copyWith(openingInterval: incorrectTimeInterval)
        : correctSunday,
  );

  final correctWeek = incorrectWeek.copyWith(
    monday: correctDay.day == DayName.monday ? correctDay : correctMonday,
    tuesday: correctDay.day == DayName.tuesday ? correctDay : correctTuesday,
    wednesday:
        correctDay.day == DayName.wednesday ? correctDay : correctWednesday,
    thursday: correctDay.day == DayName.thursday ? correctDay : correctThursday,
    friday: correctDay.day == DayName.friday ? correctDay : correctFriday,
    saturday: correctDay.day == DayName.saturday ? correctDay : correctSaturday,
    sunday: correctDay.day == DayName.sunday ? correctDay : correctSunday,
  );
  blocTest(
    description,
    build: () => ShopTimePickerBloc(),
    act: (ShopTimePickerBloc bloc) => bloc.add(correctEvent),
    seed: () => ShopTimePickerState.initial().copyWith(week: incorrectWeek),
    expect: () => [
      ShopTimePickerState.initial()
          .copyWith(week: correctWeek, showErrors: false)
    ],
  );
}
