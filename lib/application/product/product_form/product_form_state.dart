part of 'product_form_bloc.dart';

abstract class ProductFormState extends Equatable {
  const ProductFormState();
  
  @override
  List<Object> get props => [];
}

class ProductFormInitial extends ProductFormState {}
