import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:restapi_learning/models/users_models.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  List<UserModels> userList = [];
  Future<List<UserModels>> getUserApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        userList.add(UserModels.fromJson(i));
      }
      return userList;
    } else {
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Users complex".text.makeCentered(),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: getUserApi(),
              builder: (context, AsyncSnapshot<List<UserModels>> snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator.adaptive();
                } else {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: userList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Column(
                              children: [
                                ReusableRow(
                                    title: 'Name', value: userList[index].name),
                                ReusableRow(
                                    title: 'Email',
                                    value: userList[index].email),
                                ReusableRow(
                                    title: 'Address', value: userList[index].address!.city),
                                    ReusableRow(
                                    title: 'Latitude', value: userList[index].address!.geo!.lat),
                              ],
                            ),
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
  String? title, value, city, lat;
  ReusableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(title.toString()), Text(value.toString())],
    );
  }
}
