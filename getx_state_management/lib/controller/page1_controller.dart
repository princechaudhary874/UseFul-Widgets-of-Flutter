import 'package:get/get.dart';

class Page1Controller extends GetxController {
  RxString name = ''.obs;
  RxString email = ''.obs;

  void updateName(String value) {
    name.value = value;
  }

  void updateEmail(String value) {
    email.value = value;
  }
}
