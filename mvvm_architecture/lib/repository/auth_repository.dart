import 'package:mvvm_architecture/data/network/baseApiServices.dart';
import 'package:mvvm_architecture/data/network/networkApiServices.dart';
import 'package:mvvm_architecture/res/app_url.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.loginApiurl, data);
      return response;
    } catch (e) {}
  }

  Future<dynamic> registeApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.registerApiUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
