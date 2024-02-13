import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product Screen"),
          centerTitle: true,
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return const ListTile();
        }));
  }
}
