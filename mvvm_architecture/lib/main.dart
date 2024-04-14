import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/routes/routes.dart';
import 'package:mvvm_architecture/utils/routes/routes_name.dart';
import 'package:mvvm_architecture/view/login_screen.dart';
import 'package:mvvm_architecture/view_model/auth_view_model.dart';
import 'package:mvvm_architecture/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => UserViewModel())
      ],
      child: MaterialApp(
        title: 'MVVM architecture',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const LoginScreen(),
        initialRoute: RoutesName.login,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
