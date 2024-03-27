import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restapi_learning/models/photos_models.dart';
import 'package:velocity_x/velocity_x.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  List<PhotoModel> photolist = [];
  Future<List<PhotoModel>> getPhotoApi() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        photolist.add(PhotoModel.fromJson(i));
      }
      return photolist;
    } else {
      return photolist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Photo api".text.make(),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: getPhotoApi(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator.adaptive();
                } else {
                  return Expanded(
                    child: ListView.builder(itemCount:photolist.length, itemBuilder: (context, index) {
                      return ListTile(
                        title: photolist[index].title.toString().text.make(),
                      //  leading: Image.asset(photolist[index].),
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
