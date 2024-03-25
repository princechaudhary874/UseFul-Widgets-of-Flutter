import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/provider/count_provider.dart';
import 'package:provider_learning/provider/example_one_provider.dart';
import 'package:provider_learning/provider/favourite_provider.dart';
// import 'package:provider_learning/screen/count_example.dart';
import 'package:provider_learning/screen/example_one_add.dart';
import 'package:provider_learning/screen/favourite_app/favourite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //using single provider
    //    return ChangeNotifierProvider(
    //   create: (_) => CountProvider(),
    //   child: MaterialApp(
    //     title: 'Provider learning',
    //     theme: ThemeData(
    //       useMaterial3: true,
    //     ),
    //     home: const CounterExample(),
    //   ),
    // );

    //using multiple provider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteScreenProvider()),
      ],
      child: MaterialApp(
        title: 'Provider learning',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const FavouriteScreen(),
      ),
    );
  }
}
