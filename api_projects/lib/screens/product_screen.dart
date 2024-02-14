import 'package:api_projects/bloc/products_bloc.dart'; // Import the ProductsBloc
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    // When the widget initializes, add the ProductsLoadedEvent to the ProductsBloc
    context.read<ProductsBloc>().add(ProductsLoadedEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Screen"),
        centerTitle: true,
      ),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          // Check the current state of the ProductsBloc and return the corresponding UI
          if (state is ProductsLoadingState) {
            // Show a loading indicator if products are loading
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is ProductsLoadedState) {
            // If products are loaded, display them in a ListView
            return ListView.builder(
              itemCount: state
                  .productsModel.length, // Use the length of productsModel list
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    state.productsModel[index].id.toString(), // Show product ID
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  title: Text(state.productsModel[index].title
                      .toString()), // Show product title
                  trailing: Text(
                      "Rs ${state.productsModel[index].price.toString()}"), // Show product price
                  subtitle: Text(state.productsModel[index].description
                      .toString()), // Show product description
                );
              },
            );
          } else if (state is ProductsErrorState) {
            // Show an error message if there's an error
            return Center(
              child: Text(state.errorMessage),
            );
          }
          // Handle other states if necessary
          return Container(); // Placeholder return if no other state is handled
        },
      ),
    );
  }
}
