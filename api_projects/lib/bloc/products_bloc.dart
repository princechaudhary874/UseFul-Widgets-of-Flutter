import 'package:api_projects/models/products_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial()) {
    on<ProductsEvent>((event, emit) async {
      try {
        emit(ProductsLoadingState());
        var response =
            await http.get(Uri.parse("https://fakestoreapi.com/products"));
        if (response.statusCode == 200) {
          emit(ProductsLoadedState(
              // To parse this JSON data, do
              //
              //     final productsModel = productsModelFromJson(jsonString);
              productsModel: productsModelFromJson(response.body)));
        } else {
          throw Exception("Failed to Load Products");
        }
      } catch (e) {
        emit(ProductsErrorState( errorMessage: e.toString()));
      }
    });
  }
}
