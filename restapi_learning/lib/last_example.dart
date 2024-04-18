import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:restapi_learning/models/products_models.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class LastExample extends StatefulWidget {
  const LastExample({super.key});

  @override
  State<LastExample> createState() => _LastExampleState();
}

class _LastExampleState extends State<LastExample> {
  Future<ProductModel> getProductsApi() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/products'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductModel.fromJson(data);
    } else {
      return ProductModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "dummy products API".text.make(),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: getProductsApi(),
              builder: (context, AsyncSnapshot<ProductModel> snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator.adaptive();
                } else {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data!.products!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ReusableRow(
                                  title: 'name',
                                  value: snapshot
                                      .data!.products![index].category
                                      .toString())
                            ],
                          );
                        }),
                  );
                }
              })
        ],
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  String? title, value;
  ReusableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text(title.toString()), Text(value.toString())],
    );
  }
}
