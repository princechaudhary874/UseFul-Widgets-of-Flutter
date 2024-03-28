import 'package:flutter/material.dart';
import 'package:restapi_learning/example_one.dart';
import 'package:restapi_learning/example_two.dart';
import 'package:restapi_learning/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExampleTwo(),
    );
  }
}
