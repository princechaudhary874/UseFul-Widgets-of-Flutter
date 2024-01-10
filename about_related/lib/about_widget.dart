import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About dialog',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.black),
            elevation: MaterialStatePropertyAll(10),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const AboutDialog(
                applicationIcon: Icon(Icons.person),
                applicationVersion: '1.1.0',
                applicationLegalese: 'www.google.com',
                children: [
                  Text('This is aboutDialog'),
                ],
              ),
            );
          },
          child: const Text(
            'click to get app information',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
