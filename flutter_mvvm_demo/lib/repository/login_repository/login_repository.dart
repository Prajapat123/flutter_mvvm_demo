import 'package:flutter_mvvm_demo/data/network/network_api_services.dart';
import 'package:flutter_mvvm_demo/res/app_url/app_url.dart';

class LoginRepository {
  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data) {
    dynamic response = _apiService.postApi(data, AppUrl.loginApi);
    return response;
  }
}
