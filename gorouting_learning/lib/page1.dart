import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          const Text("Welcome to first page"),
          const SizedBox(
            height: 25,
          ),
          TextButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                fixedSize: MaterialStatePropertyAll(Size.fromWidth(100))),
            onPressed: () {
              GoRouter.of(context).go('/page2');
            },
            child: const Text("Go to another page"),
          )
        ]),
      ),
    );
  }
}
