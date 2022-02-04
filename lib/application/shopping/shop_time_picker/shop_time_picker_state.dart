part of 'shop_time_picker_bloc.dart';

abstract class ShopTimePickerState extends Equatable {
  const ShopTimePickerState();
  
  @override
  List<Object> get props => [];
}

class ShopTimePickerInitial extends ShopTimePickerState {}
