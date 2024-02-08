import 'package:flutter/material.dart';

class UiHelper {
  // function for texfield
  static customTextField(TextEditingController controller, String text,
      IconData iconData, bool toHide) {
    return TextField(
      controller: controller,
      obscureText: toHide, //show or hide used for password
      decoration: InputDecoration(
        hintText: text,
        suffixIcon: Icon(iconData),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }

  // function for button
  static customButton(VoidCallback voidCallback, String text) {
    return SizedBox(
      height: 50,
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          voidCallback();
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 30,color: Colors.white),
        ),
      ),
    );
  }
}
