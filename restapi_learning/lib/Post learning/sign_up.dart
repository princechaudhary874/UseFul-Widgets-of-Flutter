import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(email, password) async {
    try {
      Response response =
          await post(Uri.parse('https://reqres.in/api/register'), body: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        debugPrint(data.toString());
        debugPrint("Account created successfully");
      } else {
        debugPrint("Failed");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Sign up using post api".text.make(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(hintText: "Email".toString()),
              ),
              10.heightBox,
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(hintText: "password".toString()),
              ),

              20.heightBox,
              // sign up button
              ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {
                    login(emailController.text.toString(),
                        passwordController.text.toString());
                  },
                  child: "Sign Up".text.make())
            ],
          ),
        ),
      ),
    );
  }
}
