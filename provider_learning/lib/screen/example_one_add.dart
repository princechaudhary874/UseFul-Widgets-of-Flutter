import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/provider/example_one_provider.dart';

class ExampleOneProvider extends StatefulWidget {
  const ExampleOneProvider({super.key});

  @override
  State<ExampleOneProvider> createState() => _ExampleOneProviderState();
}

class _ExampleOneProviderState extends State<ExampleOneProvider> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ExampleProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            min: 0.0,
            max: 1.0,
            value: provider.value,
            onChanged: (val) {
              // setState(() {});
              provider.setValue(val);
            },
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(provider.value),
                  ),
                  child: const Center(
                    child: Text("Conatiner 1"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(provider.value),
                  ),
                  child: const Center(
                    child: Text("Conatiner 2"),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
