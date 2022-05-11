import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/shop/time/week.dart';
import 'package:shopify_manager/presentation/register_shop/opening_hours/misc/day_presentation_classes.dart';
import 'package:injectable/injectable.dart';

part 'shop_time_picker_event.dart';
part 'shop_time_picker_state.dart';
part 'shop_time_picker_bloc.freezed.dart';

@LazySingleton()
class ShopTimePickerBloc
    extends Bloc<ShopTimePickerEvent, ShopTimePickerState> {
  ShopTimePickerBloc() : super(ShopTimePickerState.initial()) {
    on<ShopTimePickerEvent>((event, emit) {
      event.map(
        mondayChanged: (e) {
          final domain = e.monday.toDomain();
          final updatedWeek = state.week.copyWith(monday: domain);
          emit(state.copyWith(
              week: state.week.copyWith(monday: domain),
              showErrors: updatedWeek.failureOption.isSome()));
        },
        tuesdayChanged: (e) {
          final domain = e.tuesday.toDomain();
          final updatedWeek = state.week.copyWith(tuesday: domain);
          emit(state.copyWith(
              week: state.week.copyWith(tuesday: domain),
              showErrors: updatedWeek.failureOption.isSome()));
        },
        wednesdayChanged: (e) {
          final domain = e.wednesday.toDomain();
          final updatedWeek = state.week.copyWith(wednesday: domain);
          emit(state.copyWith(
              week: state.week.copyWith(wednesday: domain),
              showErrors: updatedWeek.failureOption.isSome()));
        },
        thursdayChanged: (e) {
          final domain = e.thursday.toDomain();
          final updatedWeek = state.week.copyWith(thursday: domain);
          emit(state.copyWith(
              week: state.week.copyWith(thursday: domain),
              showErrors: updatedWeek.failureOption.isSome()));
        },
        fridayChanged: (e) {
          final domain = e.friday.toDomain();
          final updatedWeek = state.week.copyWith(friday: domain);
          emit(state.copyWith(
              week: state.week.copyWith(friday: domain),
              showErrors: updatedWeek.failureOption.isSome()));
        },
        saturdayChanged: (e) {
          final domain = e.saturday.toDomain();
          final updatedWeek = state.week.copyWith(saturday: domain);
          emit(state.copyWith(
              week: state.week.copyWith(saturday: domain),
              showErrors: updatedWeek.failureOption.isSome()));
        },
        sundayChanged: (e) {
          final domain = e.sunday.toDomain();
          final updatedWeek = state.week.copyWith(sunday: domain);
          emit(state.copyWith(
              week: state.week.copyWith(sunday: domain),
              showErrors: updatedWeek.failureOption.isSome()));
        },
        proceeded: (_) {
          final failureOption = state.week.failureOption;
          failureOption.fold(() {
            emit(ShopTimePickerState.saved(week: state.week));
            emit(state.copyWith(saved: false));
          }, (_) {
            emit(state.copyWith(showErrors: true));
          });
        },
      );
    });
  }
}
