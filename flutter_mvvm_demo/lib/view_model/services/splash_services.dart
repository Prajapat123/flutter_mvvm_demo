import 'dart:async';

import 'package:flutter_mvvm_demo/res/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashServices {
  void isLogin() {
    Timer(Duration(seconds: 3), () => Get.toNamed(RoutName.login_view));
  }
}
