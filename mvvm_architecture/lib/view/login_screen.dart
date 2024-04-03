import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mvvm_architecture/utils/general_utils.dart';
import 'package:mvvm_architecture/utils/routes/routes_name.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailfocus = FocusNode();
  FocusNode passwordfocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // InkWell(
          //   onTap: () {
          //     Navigator.pushNamed(context, RoutesName.home);
          //   },
          //   child: const Text("go to home"),
          // ),
          // 10.heightBox,
          // TextFormField(
          //   validator: (value) {},
          //   decoration: const InputDecoration(
          //     hintText: "Enter your email",
          //   ),
          // ),
          // 50.heightBox,
          // InkWell(
          //   onTap: () {
          //     Utils.toastMessage("message");
          //   },
          //   child: const Text("Show toast message"),
          // ),

          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            focusNode: emailfocus,
            decoration: const InputDecoration(
              hintText: "Email",
              prefixIcon: Icon(Icons.mail),
            ),
            onFieldSubmitted: (value) {
              FocusScope.of(context).requestFocus(passwordfocus);
            },
          ),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            focusNode: passwordfocus,
            obscuringCharacter: '*',
            decoration: const InputDecoration(
                hintText: "password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off)),
            onFieldSubmitted: (value) {
              FocusScope.of(context).requestFocus(emailfocus);
            },
          )
        ],
      ),
    );
  }
}
