import 'package:flutter/material.dart';
import 'package:mvvm_architecture/repository/auth_repository.dart';
import 'package:mvvm_architecture/utils/general_utils.dart';
import 'package:mvvm_architecture/utils/routes/routes_name.dart';

// in auth view model , we handle the data come from the api
class AuthViewModel with ChangeNotifier {
  final _myRepo = AuthRepository();
  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  // handles all the things came from the api
  Future<void> loginApi(dynamic data, BuildContext context) async {
    // when we hit api , we set setloading to true
    setLoading(true);

    _myRepo.loginApi(data).then((value) {
      // after data from api we agian set setLoading to false
      setLoading(false);
      Navigator.pushReplacementNamed(context, RoutesName.home);
      Utils.flushBarErrorMessage("Login Successfully!", context);

      debugPrint(value.toString());
    }).onError((error, stackTrace) {
      // when we get error , setting setLoading to false
      setLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
      debugPrint(error.toString());
    });
  }
}
