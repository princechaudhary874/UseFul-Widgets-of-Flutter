import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/provider/count_provider.dart';
import 'package:velocity_x/velocity_x.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  @override
  void initState() {
    final countProvider = Provider.of<CountProvider>(context, listen: false);

    super.initState();
    Timer.periodic(const Duration(seconds: 1), ( Timer) {
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    debugPrint("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: "Counter App".text.make(),
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<CountProvider>(builder: (context, value, child) {
              debugPrint("only this text widget rebuild ");
              return Text(countProvider.count.toString());
            }),
            FloatingActionButton(
              onPressed: () {
                countProvider.setCount();
              },
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
