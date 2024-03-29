import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class WeatherApi extends StatefulWidget {
  const WeatherApi({super.key});

  @override
  State<WeatherApi> createState() => _WeatherApiState();
}

class _WeatherApiState extends State<WeatherApi> {
  var data;
  Future getweatherApi() async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/forecast?q=Kathmandu&APPID=bc50cb7c43e9765d96a5d2070d0df3d0'));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Weather Data".text.make(),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: getweatherApi(),
              builder: (context, snapshot) {
                if (snapshot.connectionState==ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else {
                  return Column(
                    children: [
                      Text(data['list'][0]['main']['temp'].toString())
                    ],
                  );
                }
              })
        ],
      ),
    );
  }
}
