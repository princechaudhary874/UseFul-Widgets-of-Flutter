import 'dart:async';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StatefulW extends StatefulWidget {
  const StatefulW({super.key});

  @override
  State<StatefulW> createState() => _StatefulWState();
}

class _StatefulWState extends State<StatefulW> {
  int count = 0;
  int? increment;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: ["$increment".text.size(25).makeCentered()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increment = ++count;
          print(increment);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
