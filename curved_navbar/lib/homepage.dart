import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.favorite,
            size: 30,
          ),
          Icon(
            Icons.settings,
            size: 30,
          ),
        ],
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
