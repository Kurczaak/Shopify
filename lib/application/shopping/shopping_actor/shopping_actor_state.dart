part of 'shopping_actor_bloc.dart';

abstract class ShoppingActorState extends Equatable {
  const ShoppingActorState();
  
  @override
  List<Object> get props => [];
}

class ShoppingActorInitial extends ShoppingActorState {}
