import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxInt counter = 0.obs;
  RxString name = ''.obs;
  RxBool isDarkMode = false.obs;
  RxString themeMode = 'System'.obs;

  void incrementCounter() {
    counter.value++;
  }

  void decrementCounter() {
    counter.value--;
  }

  
}
