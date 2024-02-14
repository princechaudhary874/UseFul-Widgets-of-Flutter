part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();

  @override
  List<Object> get props => [];
}

// Define a concrete class for the ProductsLoadedEvent
class ProductsLoadedEvent extends ProductsEvent {
  @override
  List<Object> get props => [];
}
