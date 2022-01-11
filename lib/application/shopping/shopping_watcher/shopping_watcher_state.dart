part of 'shopping_watcher_bloc.dart';

abstract class ShoppingWatcherState extends Equatable {
  const ShoppingWatcherState();
  
  @override
  List<Object> get props => [];
}

class ShoppingWatcherInitial extends ShoppingWatcherState {}
