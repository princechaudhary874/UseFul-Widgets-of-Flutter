part of 'products_bloc.dart';

// Define the ProductsState class hierarchy
sealed class ProductsState extends Equatable {
  const ProductsState();

  // Equatable is used to compare objects and avoid duplicate calls
  @override
  List<Object> get props => [];
}

// Define the initial state of the products bloc
final class ProductsInitial extends ProductsState {}

// Define the state when products are loading
final class ProductsLoadingState extends ProductsState {}

// Define the state when products are successfully loaded
final class ProductsLoadedState extends ProductsState {
  // List of product models loaded from JSON
  final List<ProductsModel> productsModel;

  const ProductsLoadedState({required this.productsModel});

  // Using the Equatable package to compare objects
  @override
  List<Object> get props => [productsModel];
}

// Define the state when there's an error loading products
final class ProductsErrorState extends ProductsState {
  // Error message to display
  final String errorMessage;

  const ProductsErrorState({required this.errorMessage});

  // Using the Equatable package to compare objects
  @override
  List<Object> get props => [errorMessage];
}
