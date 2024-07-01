import 'package:flutter/material.dart';
import 'package:flutter_mvvm_demo/repository/login_repository/login_repository.dart';
import 'package:flutter_mvvm_demo/utils/utils.dart';
import 'package:get/get.dart';

class LoginModel extends GetxController {
  final _api = LoginRepository();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      loading.value = false;

      Utils.snackBar('login', 'Login Successfull');
    }).onError((error, stackTrace) {
      loading.value = false;

      Utils.snackBar('login', error.toString());
    });
  }
}
