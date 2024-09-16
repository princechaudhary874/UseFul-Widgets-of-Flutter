import 'package:flutter/material.dart';

enum SnackbarType { error, success, info }

class CustomSnackbar extends SnackBar {
  CustomSnackbar({required String message, required SnackbarType type})
      : super(
          content: Row(
            children: [
              Icon(
                _getIcon(type),
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          backgroundColor: _getBackgroundColor(type),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          duration: Duration(seconds: 3),
          padding: EdgeInsets.all(10),
          elevation: 10, // Box shadow effect
        );

  static Color _getBackgroundColor(SnackbarType type) {
    switch (type) {
      case SnackbarType.error:
        return Colors.redAccent;
      case SnackbarType.success:
        return Colors.greenAccent;
      case SnackbarType.info:
      default:
        return Colors.blueAccent;
    }
  }

  static IconData _getIcon(SnackbarType type) {
    switch (type) {
      case SnackbarType.error:
        return Icons.error;
      case SnackbarType.success:
        return Icons.check_circle;
      case SnackbarType.info:
      default:
        return Icons.info;
    }
  }
}