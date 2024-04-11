import 'package:flutter/material.dart';
import 'package:mvvm_architecture/repository/auth_repository.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepo = AuthRepository();

  // handles all the things came from the api
  Future<void> loginApi() async{
    
  }
}
