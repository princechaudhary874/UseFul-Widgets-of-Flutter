import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/provider/count_provider.dart';
import 'package:provider_learning/screen/count_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'Provider learning',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const CounterExample(),
      ),
    );
  }
}
