import 'package:curved_navbar/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curved Navigation Bar',
      debugShowCheckedModeBanner: false,
      home:const Homepage(),
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
