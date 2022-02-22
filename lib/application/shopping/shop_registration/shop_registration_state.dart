part of 'shop_registration_bloc.dart';

abstract class ShopRegistrationState extends Equatable {
  const ShopRegistrationState();
  
  @override
  List<Object> get props => [];
}

class ShopRegistrationInitial extends ShopRegistrationState {}
