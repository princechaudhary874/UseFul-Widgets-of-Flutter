import "package:firebase_auth/ui_helper.dart";
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          UiHelper.customTextField(
              emailController, 'Enter your email', Icons.mail, false),
          UiHelper.customTextField(
              passwordController, 'Password', Icons.password_rounded, true),
          const SizedBox(
            height: 30,
          ),
          // login button
          UiHelper.customButton(() {}, 'Login'),
        ],
      ),
    );
  }
}
