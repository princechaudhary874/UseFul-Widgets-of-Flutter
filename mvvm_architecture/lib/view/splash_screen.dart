import 'package:flutter/material.dart';
import 'package:mvvm_architecture/view_model/services/splash_services.dart';
import 'package:velocity_x/velocity_x.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    super.initState();
    splashServices.checkAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: "SharedPreference splash".text.size(20).makeCentered(),
      ),
    );
  }
}
