import 'package:flutter/material.dart';
import 'package:mvvm_architecture/res/components/round_button.dart';
import 'package:mvvm_architecture/utils/routes/routes_name.dart';
import 'package:mvvm_architecture/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userPreferences = Provider.of<UserViewModel>(context);

    return Scaffold(
      body: Column(
        children: [
          const Text("welcome to the home"),
          const Spacer(),
          RoundedButton(
            onPress: () {
              userPreferences.remove().then((value) {
                Navigator.pushNamed(context, RoutesName.login);
              });
            },
            title: 'Log Out',
            loading: false,
          )
        ],
      ),
    );
  }
}
