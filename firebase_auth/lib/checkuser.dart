import 'package:firebase_aut/login_page.dart';
import 'package:firebase_aut/myhomepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CheckUser extends StatefulWidget {
  const CheckUser({super.key});

  @override
  State<CheckUser> createState() => _CheckUserState();
}

class _CheckUserState extends State<CheckUser> {
  @override
  void initState() {
    super.initState();
    // Call the checkUser method when the widget is first initialized
    checkUser();
  }

  // check user is logged in or not
  checkUser() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // If the user is logged in, navigate to MyWidget
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>const MyWidget()),
      );
    } else {
      // If the user is not logged in, navigate to LoginPage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>const LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // This widget doesn't actually render anything, as navigation is performed
    // in the checkUser method.
    return const Scaffold();
  }
}
