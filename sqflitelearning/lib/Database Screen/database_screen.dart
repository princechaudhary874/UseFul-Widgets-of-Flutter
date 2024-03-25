import 'package:flutter/material.dart';

class DatabaseScreen extends StatelessWidget {
  const DatabaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // Create Button
            ElevatedButton(onPressed: () {}, child: const Text("Create")),
            // Read Button
            ElevatedButton(onPressed: () {}, child: const Text("Read")),
            // Update Button
            ElevatedButton(onPressed: () {}, child: const Text("Update")),
            // Delete Button
            ElevatedButton(onPressed: () {}, child: const Text("Delete")),
          ],
        ),
      ),
    );
  }
}
