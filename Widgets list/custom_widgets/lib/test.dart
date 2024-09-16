import 'package:flutter/material.dart';

import 'custom widgets/snackbar/custom_alert_dialog.dart';
import 'custom widgets/snackbar/custom_snackbar.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  //function for snackbar message display
  void _showSnackbar(BuildContext context, String message, SnackbarType type) {
    final customSnackbar = CustomSnackbar(
      message: message,
      type: type,
    );

    ScaffoldMessenger.of(context).showSnackBar(customSnackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
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
              child: const Text('Show Custom Card Dialog'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showSnackbar(
                  context, 'No internet connection', SnackbarType.error),
              child: const Text('Show Error Snackbar'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showSnackbar(
                  context, 'Operation successful', SnackbarType.success),
              child: const Text('Show Success Snackbar'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () =>
                  _showSnackbar(context, 'Random message', SnackbarType.info),
              child: const Text('Show Info Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
