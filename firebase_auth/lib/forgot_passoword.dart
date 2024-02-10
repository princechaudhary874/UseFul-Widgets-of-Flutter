import 'package:firebase_aut/ui_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailcontroller = TextEditingController();
  forgotPassword(String email) async {
    if (email == "") {
      return UiHelper.customAlertBox(context, "Enter the valid email");
    } else {
      FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          UiHelper.customTextField(
              emailcontroller, "Enter your email", Icons.mail, false),
          const SizedBox(height: 10),
          UiHelper.customButton(() {
            forgotPassword(emailcontroller.text.toString());
          }, "Reset")
        ],
      ),
    );
  }
}
