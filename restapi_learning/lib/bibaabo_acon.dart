import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:restapi_learning/models/bibaabo_banks_api.dart';
import 'package:velocity_x/velocity_x.dart';

class BibaaboAccount extends StatefulWidget {
  const BibaaboAccount({super.key});

  @override
  State<BibaaboAccount> createState() => _BibaaboAccountState();
}

class _BibaaboAccountState extends State<BibaaboAccount> {
  Future<BibaaboBankModels> getBankApi() async {
    final respose =
        await http.get(Uri.parse('http://admin.bibaabo.com/api/bank/search'));
    var data = jsonDecode(respose.body);
    if (respose.statusCode == 200) {
      return BibaaboBankModels.fromJson(data);
    } else {
      return BibaaboBankModels.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bank Data"),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: getBankApi(),
              builder: (context, AsyncSnapshot<BibaaboBankModels> snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                } else {
                  return Row(
                     children:[
                       Expanded(
                         child: VxSwiper.builder(
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          height: 150,
                          itemCount: snapshot.data!.data!.length,
                          itemBuilder: (context, index) {
                            return Image.network(
                             'http://admin.bibaabo.com${snapshot.data!.data![index].banner.toString()}' ,
                              fit: BoxFit.fill,
                            )
                                .box
                                .rounded
                                .clip(Clip.antiAlias)
                                .margin(const EdgeInsets.symmetric(horizontal: 8))
                                .make();
                          }),
                       ),
                     ],
                  );
                }
              }),
          FutureBuilder(
              future: getBankApi(),
              builder: (context, AsyncSnapshot<BibaaboBankModels> snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator.adaptive();
                } else {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: ((context, index) {
                          return ListTile(
                            title: Text(
                                snapshot.data!.data![index].title.toString()),
                            subtitle: Text(snapshot
                                .data!.data![index].introduction
                                .toString()),
                            // Inside the ListTile leading property:
                            trailing: snapshot.data!.data![index].banner != null
                                ? CircleAvatar(
                                    child: ClipOval(
                                      child: Image(
                                        image: NetworkImage(
                                          'http://admin.bibaabo.com${snapshot.data!.data![index].banner.toString()}',
                                        ),
                                        fit: BoxFit.fill,
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                  )
                                : Container(),
                            leading: snapshot.data!.data![index].logo != null
                                ? CircleAvatar(
                                    child: ClipOval(
                                      child: Image(
                                        image: NetworkImage(
                                          'http://admin.bibaabo.com${snapshot.data!.data![index].logo.toString()}',
                                        ),
                                        fit: BoxFit.fill,
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                  )
                                : Container(), // Replace PlaceholderWidget with your placeholder widget
                          )
                              .box
                              .white
                              .margin(const EdgeInsets.all(5))
                              .shadowSm
                              .roundedSM
                              .make();
                        })),
                  );
                }
              })
        ],
      ),
    );
  }
}
