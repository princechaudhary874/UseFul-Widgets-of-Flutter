import 'package:flutter/material.dart';

import 'custom widgets/snackbar/custom_alert_dialog.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomCardDialog(
                      title: 'Custom Card Alert Dialog',
                      message:
                          'This is a custom alert dialog with a card-like appearance.',
                      icon: Icons.info,
                    );
                  },
                );
              },
              child: Text('Show Custom Card Dialog'),
            ),
          )
        ],
      ),
    );
  }
}
