import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mvvm_architecture/res/components/round_button.dart';
import 'package:mvvm_architecture/utils/general_utils.dart';
import 'package:mvvm_architecture/utils/routes/routes_name.dart';
import 'package:mvvm_architecture/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailfocus = FocusNode();
  FocusNode passwordfocus = FocusNode();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    _obsecurePassword.dispose();
    emailfocus.dispose();
    passwordfocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
              // FocusScope.of(context).requestFocus(passwordfocus);
              Utils.fieldFocusChange(context, emailfocus, passwordfocus);
            },
          ),

          ValueListenableBuilder(
              valueListenable: _obsecurePassword,
              builder: (context, value, child) {
                return TextFormField(
                  controller: passwordController,
                  obscureText: _obsecurePassword.value,
                  focusNode: passwordfocus,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: "password",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        _obsecurePassword.value = !_obsecurePassword.value;
                      },
                      child: _obsecurePassword.value
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                  ),
                  onFieldSubmitted: (value) {
                    // FocusScope.of(context).requestFocus(emailfocus);
                    Utils.fieldFocusChange(context, passwordfocus, emailfocus);
                  },
                );
              }),
          20.heightBox,
          RoundedButton(
              title: 'Login',
              loading: authViewModel.loading,
              onPress: () {
                if (emailController.text.isEmpty) {
                  Utils.snackBar("Enter valid email", context);
                } else if (passwordController.text.isEmpty) {
                  Utils.flushBarErrorMessage("Enter password", context);
                } else if (passwordController.text.length < 8) {
                  Utils.toastMessage("Enter 8 digits password");
                } else {
                  Map data = {
                    'email': emailController.text.toString(),
                    'password': passwordController.text.toString()
                  };

                  authViewModel.loginApi(data, context);
                  debugPrint('Api hits');
                }
              }),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Don't have an account ?  ".text.make(),
              "Sign Up".text.color(Colors.blue).make().onTap(() {
                Navigator.pushNamed(context, RoutesName.register);
              })
            ],
          )
        ],
      ),
    );
  }
}
