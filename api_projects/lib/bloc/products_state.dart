part of 'products_bloc.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();
// equatable is used to compare objects and doesn't make duplicate call
  @override
  List<Object> get props => [];
}

final class ProductsInitial extends ProductsState {}

final class ProductsLoadedState extends ProductsState {}

final class ProductsLoadingState extends ProductsState {
  // Json file of product models are represented in list
  final List<ProductsModel> productsModel;

  const ProductsLoadingState({required this.productsModel});
  // using equatable package
  @override
  List<Object> get props => [productsModel];
}

final class ProductsErrorState extends ProductsState {
  final String errorMessage;

  const ProductsErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
