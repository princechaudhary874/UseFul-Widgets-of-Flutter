import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  List<Photos> photoList = [];
  Future<List<Photos>> getPhotoApi() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        Photos photos = Photos(title: i['title'], url: i['url'], id: i['id']);
        photoList.add(photos);
      }
      return photoList;
    } else {
      return photoList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Photlist Api".text.makeCentered(),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: getPhotoApi(),
              builder: ((context, AsyncSnapshot<List<Photos>> snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator.adaptive();
                } else {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: photoList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            // leading: CircleAvatar(
                            //   backgroundImage: NetworkImage(photoList[index].url.toString()),
                            // ),
                            subtitle:
                                snapshot.data![index].id.toString().text.make(),
                            title:
                                photoList[index].title.toString().text.make(),
                          );
                        }),
                  );
                }
              }))
        ],
      ),
    );
  }
}

// creating model
class Photos {
  String? title, url;
  int? id;

  Photos({required this.title, required this.url, required this.id});
}
