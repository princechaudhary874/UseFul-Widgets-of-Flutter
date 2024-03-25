import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier {
  // changeNotifier work as a setstate

  int _count = 0;
  int get count => _count;

  void setCount() {
    _count++;
    // notifyListeners is used to notify widgets to rebuild
    notifyListeners();
  }
}
